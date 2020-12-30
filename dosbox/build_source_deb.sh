#!/bin/sh
#build source package
tar -xf orig/dosbox-0.74-3.tar.gz
cp orig/dosbox-0.74-3.tar.gz dosbox-mt32_0.74.orig.tar.gz
cd dosbox-0.74-3
cp -r ../debian .
dpkg-source -b .
cd ..
rm -r dosbox-0.74-3

