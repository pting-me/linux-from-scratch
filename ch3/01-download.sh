#!/bin/bash

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources
wget -i wget-list -P $LFS/sources

cp md5sums $LFS/sources
pushd $LFS/sources
md5sum -c md5sums > md5sums_log
rm md5sums
popd

echo "You can view the log at $LFS/sources/md5sums_log"
