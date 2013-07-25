#!/bin/bash

# extract
cd $LFS/sources
tar -zxf check-0.9.9.tar.gz
cd check-0.9.9

# cleanup
cd ..
rm -rf check-0.9.9