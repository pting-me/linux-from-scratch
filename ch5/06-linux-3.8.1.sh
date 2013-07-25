#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf linux-3.8.1.tar.xz
cd linux-3.8.1

# cleanup
cd ..
rm -rf linux-3.8.1