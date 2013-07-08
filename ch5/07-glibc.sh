#!/bin/bash

# rpc headers should be installed correctly
if [ ! -r /usr/include/rpc/types.h ]; then
  su -c 'mkdir -p /usr/include/rpc'
  su -c 'cp -v sunrpc/rpc/*.h /usr/include/rpc'
fi

# extract
cd $LFS/sources
tar -xJf glibc-2.17.tar.xz
cd glibc-2.17

# create build directory
mkdir -v ../glibc-build
cd ../glibc-build

# configure
../glibc-2.17/configure                             \
      --prefix=/tools                                 \
      --host=$LFS_TGT                                 \
      --build=$(../glibc-2.17/scripts/config.guess) \
      --disable-profile                               \
      --enable-kernel=2.6.25                          \
      --with-headers=/tools/include                   \
      libc_cv_forced_unwind=yes                       \
      libc_cv_ctors_header=yes                        \
      libc_cv_c_cleanup=yes

make
make install

# cleanup
cd ..
rm -rf glibc-2.17 glibc-build
