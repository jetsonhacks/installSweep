#!/bin/bash
# Install the Scanse Sweep SDK
# This script builds and install the Sweep SDK
# and builds the examples
cd $ROOT
git clone https://github.com/scanse/sweep-sdk.git
cd sweep-sdk/libsweep
mkdir -p build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
sudo cmake --build . --target install
sudo ldconfig
# Build the examples
cd ..
cd examples
# libsfml is required for the viewer example
sudo apt-get install libsfml-dev -y
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .



