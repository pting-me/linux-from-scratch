#!/bin/bash

# extract
cd $LFS/sources
tar -zxf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6

# cleanup
cd ..
rm -rf bzip2-1.0.6