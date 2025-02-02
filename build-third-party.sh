#!/bin/bash

BASE_PATH=$(readlink -f $0)
BASE_DIR=$(dirname $BASE_PATH)

# Build libsrtp
cd $BASE_DIR/third_party/libsrtp
mkdir -p build && cd build
cmake ..
make -j4

# Build libnice
cd $BASE_DIR/third_party/libnice
meson builddir
ninja -C builddir

# Build librtp
cd $BASE_DIR/third_party/media-server/librtp/
make -j4

