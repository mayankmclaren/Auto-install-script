#!/bin/sh
#update
echo
echo Fetching updates and upgrades.
echo
sleep 3
sudo apt-get -y update
sudo apt-get -y upgrade

#tools
echo
echo installing net-tools
echo
sleep 2
sudo apt-get install -y net-tools #net_tools

echo
echo installing software-properties
echo
sleep 2
sudo apt-get install software-properties-common #for add-apt-repository

echo
echo installing openssh server
echo
sleep 2
sudo apt-get install -y openssh-server #openssh-server

echo
echo installing openssl and libssl dev
echo
sleep 2
sudo apt-get install -y openssl #openssl
sudo apt-get install -y libssl-dev #libssl-dev

echo
echo installing curl
echo
sleep 2
sudo apt-get install -y curl #curl

echo
echo installing cmake
echo
sleep 2
sudo apt-get install -y cmake #cmake

#python
echo
echo installing python3 and pip3
echo
sleep 2
sudo apt-get update
sudo apt-get install -y python3.6
sudo apt install -y python-pip #pip
sudo apt install -y python3-pip #pip3

#chrome

echo
echo installing chrome
echo
sleep 2
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

#git

echo
echo installing git
echo
sleep 2
sudo apt-get install -y git

#Persopolis Download Manager

echo
echo installing Persopolis Download Manager
echo
sleep 2
sudo add-apt-repository ppa:persepolis/ppa
sudo apt update
sudo apt install -y persepolis

#lightdm

echo
echo installing Lightdm
echo
sleep 2
sudo apt-get install -y lightdm

#VS Code

echo
echo installing VS Code
echo
sleep 2
sudo snap install code --classic

#wireshark

echo
echo installing Wireshark
echo
sleep 2
sudo apt-get install -y libcap2-bin wireshark
sudo dpkg-reconfigure wireshark-common

export usrname=$USER
sudo chgrp $usrname /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin+eip /usr/bin/dumpcap

#Microsoft_Teams

echo
echo installing Microsoft Teams
echo
sleep 2
sudo apt -y update
sudo apt install -y snapd
sudo snap install teams-for-linux
