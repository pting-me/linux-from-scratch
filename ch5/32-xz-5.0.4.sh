#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf xz-5.0.4.tar.xz
cd xz-5.0.4

# cleanup
cd ..
rm -rf xz-5.0.4