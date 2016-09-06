#!/usr/bin/env bash

#add the latest packaged gcc arm toolchain
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
sudo apt-get update
sudo apt-get install gcc-arm-embedded

#allow user access to stlink usb devices
sudo touch /etc/udev/rules.d/45-usb-stlink-v2.rules
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="3748", MODE="0666"' | \
 sudo tee --append /etc/udev/rules.d/45-usb-stlink-v2.rules > /dev/null




#STLINK Setup
#cd /home/vagrant
#git clone https://github.com/texane/stlink.git
#cd stlink/
#cmake -DCMAKE_BUILD_TYPE=Debug
#make
#why don't these two steps work?

#clone the demo repository for STM32F4
#git clone https://github.com/rowol/stm32_discovery_arm_gcc /vagrant/projects/stm32_discovery_arm_gcc
