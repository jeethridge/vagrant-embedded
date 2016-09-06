#!/usr/bin/env bash
#export LANGUAGE=en_US.UTF-8
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
#locale-gen en_US.UTF-8
#dpkg-reconfigure locales

# Install basic development tools
sudo dpkg --add-architecture i386
sudo apt-get update -qq
sudo apt-get install -y build-essential autotools-dev autoconf pkg-config \
libusb-1.0-0 libusb-1.0-0-dev libftdi1 libftdi-dev git libc6:i386 \
libncurses5:i386 libstdc++6:i386 cowsay figlet language-pack-en \
cmake

#sudo locale-gen UTF-8

# Install python
# sudo apt-get install -y python2.7 python-numpy python-scipy python-matplotlib python-pip python-dev
# sudo pip install --upgrade pip
# sudo pip install --upgrade virtualenv
