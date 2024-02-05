#!/usr/bin/env bash

set -e

cpu_name=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d':' -f2 | tr -d '[:space:]' | cut -d'/' -f1)
echo "CPU: $cpu_name"

mkdir -p $cpu_name

function read_result() {
  local file=$1
  local line=$2
  r="$(sed "${line}q;d" "$file" | cut -d',' -f1)"
  echo $r
}

function run_perf() {
  local file=$1
  local iter_count=$2
  local output=$3
  perf stat -x , --repeat 10 -e instructions:u -e branches:u -e branch-misses:u $file $iter_count 2>&1 | tee $output
}

if [ -z "$1" ]; then
  echo "Writing baseline"
  run_perf ./main_dup 0 $cpu_name/baseline.txt
  exit 0
fi

baseline_instructions=$(read_result $cpu_name/baseline.txt 1)
baseline_branches=$(read_result $cpu_name/baseline.txt 2)
baseline_branch_misses=$(read_result $cpu_name/baseline.txt 3)

run_perf ./main_dup $1 dup.log
run_perf ./main_nodup $1 nodup.log

function compare() {
  local file=$1
  local name=$2
  c_instructions=$(read_result $file 1)
  c_branches=$(read_result $file 2)
  c_branch_misses=$(read_result $file 3)

  c_instructions=$((c_instructions - baseline_instructions))
  c_branches=$((c_branches - baseline_branches))
  c_branch_misses=$((c_branch_misses - baseline_branch_misses))
  echo "$name: instructions: $c_instructions, branches: $c_branches, branch-misses: $c_branch_misses"
}

dup_result=$(compare dup.log "dup")
nodup_result=$(compare nodup.log "nodup")

echo "==================" >> $cpu_name/result.txt
echo "Iterations: $1" >> $cpu_name/result.txt
echo $dup_result >> $cpu_name/result.txt
echo $nodup_result >> $cpu_name/result.txt
echo $dup_result
echo $nodup_result
