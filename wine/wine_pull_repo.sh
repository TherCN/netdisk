#!/bin/bash

# build 64 bit build environment
git clone git://source.winehq.org/git/wine.git ~/wine-dirs/wine-source
cd wine-source
sed -i "s|/tmp|/data/data/com.termux/files/usr/tmp|g" $(find -name "*.c")

