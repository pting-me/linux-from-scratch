#!/bin/bash

# extract
cd $LFS/sources
tar -xjf binutils-2.23.1.tar.bz2
cd binutils-2.23.1

# create build directory
mkdir -v ../binutils-build
cd ../binutils-build

# configure
CC=$LFS_TGT-gcc            \
AR=$LFS_TGT-ar             \
RANLIB=$LFS_TGT-ranlib     \
../binutils-2.23.1/configure \
    --prefix=/tools        \
    --disable-nls          \
    --with-lib-path=/tools/lib \
    --with-sysroot # as per the errata

make
make install

# prepare linker
make -C ld clean
make -C ld LIB_PATH=/usr/lib:/lib
cp -v ld/ld-new /tools/bin

# cleanup
cd ..
rm -rf binutils-2.23.1 binutils-build
