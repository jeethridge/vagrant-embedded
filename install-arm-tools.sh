#!/usr/bin/env bash

#add the latest packaged gcc arm toolchain
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
sudo apt-get update
sudo apt-get install gcc-arm-embedded



#STLINK Setup
cd /home/vagrant
git clone https://github.com/texane/stlink.git
cd stlink/
cmake -DCMAKE_BUILD_TYPE=Debug
make


#allow user access to stlink usb devices by copying the udev rules from stlink
sudo cp /home/vagrant/stlink/etc/udev/rules.d/* /etc/udev/rules.d
sudo udevadm control --reload-rules
sudo udevadm trigger

#clone the demo repository for STM32F4
git clone https://github.com/rowol/stm32_discovery_arm_gcc /vagrant/projects/stm32_discovery_arm_gcc
