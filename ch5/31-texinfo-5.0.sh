#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf texinfo-5.0.tar.xz
cd texinfo-5.0

# cleanup
cd ..
rm -rf texinfo-5.0