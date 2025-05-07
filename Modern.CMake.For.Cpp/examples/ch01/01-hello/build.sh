#!/usr/bin/bash

current_dir=$( cd $(dirname ${BASH_SOURCE[0]}) && pwd )
echo $current_dir
cd ${current_dir}
cmake -S . -B build
cmake --build build
