#!/bin/bash

# extract
cd $LFS/sources
tar -zxf expect5.45.tar.gz
cd expect5.45

# cleanup
cd ..
rm -rf expect5.45