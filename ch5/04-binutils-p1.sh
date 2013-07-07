#!/bin/bash

# extract and change dir
cd $LFS/sources
tar -xjf binutils-2.23.1.tar.bz2
cd binutils-2.23.1

# script from the book
mkdir -v ../binutils-build
cd ../binutils-build
../binutils-2.23.1/configure   \
    --prefix=/tools            \
    --with-sysroot=$LFS        \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT          \
    --disable-nls              \
    --disable-werror
make
make install

# cleanup
cd ..
rm -rf binutils-2.23.1 binutils-build
