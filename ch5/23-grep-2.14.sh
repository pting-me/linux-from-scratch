#!/bin/bash

# extract
cd $LFS/sources
tar -Jxf grep-2.14.tar.xz
cd grep-2.14

# cleanup
cd ..
rm -rf grep-2.14