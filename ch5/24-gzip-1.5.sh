#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf gzip-1.5.tar.xz
cd gzip-1.5

# cleanup
cd ..
rm -rf gzip-1.5