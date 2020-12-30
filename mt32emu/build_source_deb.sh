#!/bin/sh
#build source package
cp orig/munt-libmt32emu_2_4_1.tar.gz libmt32emu_2.4.1.orig.tar.gz
tar -xf orig/munt-libmt32emu_2_4_1.tar.gz
cd munt-libmt32emu_2_4_1
cp -r ../debian .
dpkg-source -b .
cd ..
rm -r munt-libmt32emu_2_4_1

