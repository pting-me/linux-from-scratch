#!/bin/bash

# extract
cd $LFS/sources
tar -zxf dejagnu-1.5.tar.gz
cd dejagnu-1.5

# cleanup
cd ..
rm -rf dejagnu-1.5