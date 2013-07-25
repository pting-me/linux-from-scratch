#!/bin/bash

# extract
cd $LFS/sources
tar -zxf diffutils-3.2.tar.gz
cd diffutils-3.2

# cleanup
cd ..
rm -rf diffutils-3.2