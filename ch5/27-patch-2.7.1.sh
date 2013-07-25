#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf patch-2.7.1.tar.xz
cd patch-2.7.1

# cleanup
cd ..
rm -rf patch-2.7.1