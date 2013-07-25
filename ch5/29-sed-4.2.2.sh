#!/bin/bash

# extract
cd $LFS/sources
tar -jxf sed-4.2.2.tar.bz2
cd sed-4.2.2

# cleanup
cd ..
rm -rf sed-4.2.2