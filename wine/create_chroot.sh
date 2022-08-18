#!/bin/bash


# set up the configuration for schroot
sudo echo [ubuntu_i386] > /etc/schroot/chroot.d/ubuntu_i386.conf
sudo echo description=Ubuntu Release 32-Bit >> /etc/schroot/chroot.d/ubuntu_i386.conf
sudo echo personality=linux32 >> /etc/schroot/chroot.d/ubuntu_i386.conf
sudo echo directory=/srv/chroot/ubuntu_i386 >> /etc/schroot/chroot.d/ubuntu_i386.conf
sudo echo type=directory >> /etc/schroot/chroot.d/ubuntu_i386.conf
sudo echo users=$1 >> /etc/schroot/chroot.d/ubuntu_i386.conf


