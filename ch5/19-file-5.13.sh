#!/bin/bash

# extract
cd $LFS/sources
tar -zxf file-5.13.tar.gz
cd file-5.13

# cleanup
cd ..
rm -rf file-5.13