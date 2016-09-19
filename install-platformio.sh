#!/usr/bin/env bash

#Work from the vagrant home directory
cd /home/vagrant

#install the latest stable release of platformio
pip install -U platformio

#grab the latest udev rules and copy them into our udev rules
wget --progress=bar:force https://github.com/platformio/platformio/blob/develop/scripts/99-platformio-udev.rules
sudo cp 99-platformio-udev.rules /etc/udev/rules.d
sudo udevadm control --reload-rules
sudo udevadm trigger
sudo rm 99-platformio-udev.rules
