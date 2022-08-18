#!/bin/bash

# build 64bit wine for the --with-wine64 reference
~/wine-dirs/wine64_build.sh $1

# prebuild the 32bit wine outside the chroot for the --with-wine-tools reference
~/wine-dirs/wine32_prebuild.sh $1

# build the 32bit wine32 inside the chroot and install
schroot -c ubuntu_i386 -u $(whoami) ~/wine-dirs/schroot_wine32_build.sh $1

# build the 64bit wine outside the chroot and install
~/wine-dirs/wine64_finalbuild.sh
