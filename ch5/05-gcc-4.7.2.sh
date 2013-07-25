#!/bin/bash

# extract
cd $LFS/sources
tar -jxf gcc-4.7.2.tar.bz2
cd gcc-4.7.2

# cleanup
cd ..
rm -rf gcc-4.7.2