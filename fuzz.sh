#!/bin/bash

cd build-fuzzing-scan/
sudo CC=afl-clang-lto AFL_USE_ASAN=1 cmake -S ..
make
afl-fuzz -i in -o out -m none ./clac