#!/usr/bin/env bash

clang -O1 -c oom_manual2.c -emit-llvm -o oom_manual2.bc
clang -O1 -c main.c -o main.o

llc -O1 oom_manual2.bc --relocation-model=pic -filetype=obj -o oom_manual2_dup.o -tail-dup-indirect-size=20
llc -O1 oom_manual2.bc --relocation-model=pic -filetype=obj -o oom_manual2_nodup.o -tail-dup-indirect-size=2

clang oom_manual2_dup.o main.o -o main_dup
clang oom_manual2_nodup.o main.o -o main_nodup
ls -lh main_dup main_nodup
