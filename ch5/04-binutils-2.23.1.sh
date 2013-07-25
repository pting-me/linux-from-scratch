#!/bin/bash

# extract
cd $LFS/sources
tar -jxf binutils-2.23.1.tar.bz2
cd binutils-2.23.1

# create build dir
mkdir -v ../binutils-build
cd ../binutils-build

# configure
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
rm -rf binutils-2.23.1