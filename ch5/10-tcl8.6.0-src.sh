#!/bin/bash

# extract
cd $LFS/sources
tar -zxf tcl8.6.0-src.tar.gz
cd tcl8.6.0-src

# prepare for compilation
cd unix
./configure --prefix=/tools

# build
make

# test suite - not mandatory
#TZ=UTC make test

# install package
make install

# for removal of debugging symbols
chmod -v u+w /tools/lib/libtcl8.6.so

# tcl headers
# required by expect
make install-private-headers

ln -sv tclsh8.6 /tools/bin/tclsh

# cleanup
cd ..
rm -rf tcl8.6.0-src