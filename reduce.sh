#!/usr/bin/env bash

set -e

opt -S -O1 extracted2.ll -o tmp.ll
mv tmp.ll extracted2.ll
llvm-as extracted2.ll

echo "-------------" >> data.data
grep -c "i32 [0-9]\+, label %bb[0-9]\+" extracted2.ll >> data.data

llc -time-passes extracted2.bc -filetype=null -O1 2>&1 | tee extracted2.time | head -n10 >> data.data
perf stat -e instructions:u -x , llc extracted2.bc -filetype=null -O1 2>&1 | tee extracted2.perf >> data.data

cat data.data | tail -n12
