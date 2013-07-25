#!/bin/bash

# extract
cd $LFS/sources
tar -jxf perl-5.16.2.tar.bz2
cd perl-5.16.2

# cleanup
cd ..
rm -rf perl-5.16.2