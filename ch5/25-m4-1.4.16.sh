#!/bin/bash

# extract
cd $LFS/sources
tar -jxf m4-1.4.16.tar.bz2
cd m4-1.4.16

# cleanup
cd ..
rm -rf m4-1.4.16