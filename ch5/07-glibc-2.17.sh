#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf glibc-2.17.tar.xz
cd glibc-2.17

# cleanup
cd ..
rm -rf glibc-2.17