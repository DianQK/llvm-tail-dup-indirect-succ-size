#!/usr/bin/env bash

set -e

./build.sh

cpu_name=$(cat /proc/cpuinfo | grep "model name" | head -n 1 | cut -d':' -f2 | tr -d '[:space:]' | cut -d'/' -f1)
echo "CPU: $cpu_name"
rm -rf $cpu_name

./perf.sh

iters=(
  1 2 3 4 5 6 7 8 9
  10
  100
  1000
  10000
  100000
  1000000
  10000000
  100000000
)

for iter in "${iters[@]}"; do
  ./perf.sh $iter
done
