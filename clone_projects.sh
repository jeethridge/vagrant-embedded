#!/usr/bin/env bash


#create projects directory if it doesn't exist
mkdir -p /vagrant/projects

#cd to project folder
cd /vagrant/projects

#clone the demo projects
git clone https://github.com/jeethridge/stm32f411-disco.git
