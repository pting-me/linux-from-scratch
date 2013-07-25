#!/bin/bash

# extract
cd $LFS/sources
tar -zxf findutils-4.4.2.tar.gz
cd findutils-4.4.2

# cleanup
cd ..
rm -rf findutils-4.4.2