#!/bin/sh
#build source package
mkdir temp
cp -r orig/. temp
cd temp
tar -czf ../dosbox_0.74.orig.tar.gz *
cp -r ../debian .
cd ..
dpkg-source -b temp
rm -r temp
