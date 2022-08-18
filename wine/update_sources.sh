#!/bin/bash

# update sources.list
SOURCE1="deb-src http://archive.ubuntu.com/ubuntu focal main restricted universe multiverse"
SOURCE2="deb-src http://archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse"
SOURCE3="deb-src http://security.ubuntu.com/ubuntu focal-security main restricted universe multiverse"

if [ $(cat /etc/apt/sources.list | grep "$SOURCE1" | wc -l) -ne 1 ]
then
    sudo echo $SOURCE1 >> /etc/apt/sources.list
fi

if [ $(cat /etc/apt/sources.list | grep "$SOURCE2" | wc -l) -ne 1 ]
then
    sudo echo $SOURCE2 >> /etc/apt/sources.list
fi

if [ $(cat /etc/apt/sources.list | grep "$SOURCE3" | wc -l) -ne 1 ]
then
    sudo echo $SOURCE3 >> /etc/apt/sources.list
fi

sudo apt-get update
