#!/bin/bash

# extract
cd $LFS/sources
tar -jxf make-3.82.tar.bz2
cd make-3.82

# cleanup
cd ..
rm -rf make-3.82