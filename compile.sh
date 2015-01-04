#!/bin/sh

selfpath=$(cd "$(dirname "$0")"; pwd)
echo $selfpath

cd $selfpath
rm -rf build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../TC-WRTnode.cmake ..
#cmake ..
make
