#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf gawk-4.0.2.tar.xz
cd gawk-4.0.2

# cleanup
cd ..
rm -rf gawk-4.0.2