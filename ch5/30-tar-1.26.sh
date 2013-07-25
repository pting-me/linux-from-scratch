#!/bin/bash

# extract
cd $LFS/sources
tar -jxf tar-1.26.tar.bz2
cd tar-1.26

# cleanup
cd ..
rm -rf tar-1.26