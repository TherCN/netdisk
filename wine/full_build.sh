#!/bin/bash

# update the sources.list to include deb-src repos
sudo ~/wine-dirs/update_sources.sh

# install ubuntu 20.04 non-chroot wine build dependancy packages
sudo ~/wine-dirs/install_deps.sh

sudo ~/wine-dirs/create_chroot.sh $(whoami)

# initialize 32bit chroot to build wine build dependancy packages
~/wine-dirs/initialize_schroot.sh

# pull the wine repo
~/wine-dirs/wine_pull_repo.sh

# do a clean build
~/wine-dirs/build.sh clean
