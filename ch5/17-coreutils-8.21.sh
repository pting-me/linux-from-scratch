#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf coreutils-8.21.tar.xz
cd coreutils-8.21

# cleanup
cd ..
rm -rf coreutils-8.21