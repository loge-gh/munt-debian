#!/bin/sh
#build source package
mkdir temp
cp -r orig/. temp
cd temp
tar -czf ../libmt32emu_1.2.0.orig.tar.gz *
cp -r ../debian .
cd ..
dpkg-source -b temp
rm -r temp
