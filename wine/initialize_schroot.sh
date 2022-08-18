#!/bin/bash

sudo mkdir -p /srv/chroot/ubuntu_i386
sudo debootstrap --variant=buildd --arch=i386 focal /srv/chroot/ubuntu_i386 http://archive.ubuntu.com/ubuntu/

sudo cp /etc/apt/sources.list /srv/chroot/ubuntu_i386/etc/apt/

sudo cp services /srv/chroot/ubuntu_i386/etc
sudo cp protocols /srv/chroot/ubuntu_i386/etc

sudo chown root:root /srv/chroot/ubuntu_i386/etc/services
sudo chown root:root /srv/chroot/ubuntu_i386/etc/protocols

sudo schroot -c ubuntu_i386 -u root $HOME/wine-dirs/schroot_setup_32bit_build_environment.sh $(pwd)
