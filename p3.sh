#!/bin/bash
#
# OS upgrade point 3 orange pi 5 Armbaian OS
# v3.0
#
sudo add-apt-repository ppa:liujianfeng1994/panfork-mesa
sudo add-apt-repository ppa:liujianfeng1994/rockchip-multimedia
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install mali-g610-firmware rockchip-multimedia-config -y
sudo apt-get install armbian-firmware-full -y
sudo apt update && sudo apt upgrade -y
sudo apt-get autoremove-Y
sudo apt clean -y
sudo apt-get autoclean -y
sudo apt-get full-upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt-get autoremove -y
sudo apt clean -y
sudo apt-get autoclean -y
sudo reboot
