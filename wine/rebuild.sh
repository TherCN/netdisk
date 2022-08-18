#!/bin/bash

# rebuild the 32bit wine
schroot -c ubuntu_i386 -u $(whoami) ~/wine-dirs/schroot_wine32_build.sh

# rebuild the 64bit wine
~/wine-dirs/wine64_finalbuild.sh
