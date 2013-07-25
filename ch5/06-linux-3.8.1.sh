#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf linux-3.8.1.tar.xz
cd linux-3.8.1

# clean config
make mrproper

# extract kernel headers
make headers_check
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

# cleanup
cd ..
rm -rf linux-3.8.1