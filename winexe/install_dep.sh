#!/bin/bash

sudo apt-get update
sudo apt-get -y install build-essential git
#additional packages for 32-bit
packages=(
  gettext
  libgnutls-dev
  libasound2-dev
  libdbus-1-dev
  libgphoto2-dev
  libgphoto2-port12
  libpulse-dev
  libgstreamer1.0-dev
  libgstreamer-plugins-base1.0-dev
  #above deps are meant to be installed in 32 OR 64 bit VM (not both)
  xorg-dev
  libx11-dev
  flex
  bison
  gcc-multilib
  g++-multilib
  #nvidia-opencl-dev
  libfreetype6-dev
  libxshmfence-dev
  libxrandr-dev
  libxinerama-dev
  libglu1-mesa-dev
  libosmesa6-dev
  ocl-icd-opencl-dev
  libncurses5-dev
  libv4l-dev
  liblcms2-dev
  libudev-dev
  libcapi20-dev
  libcups2-dev
  libfontconfig1-dev
  libgsm1-dev
  libtiff5-dev
  libmpg123-dev
  libopenal-dev
  libldap2-dev
  libxrender-dev
  libxslt1-dev
  libjpeg-dev
  libxcursor-dev
)
sudo apt-get -y install ${packages[*]}
#the following causes an odd conflict
sudo rm -f /usr/share/doc/ocl-icd-opencl-dev/changelog.Debian.gz
