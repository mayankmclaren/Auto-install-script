#!/bin/sh
#update

sudo apt-get -y update
sudo apt-get -y upgrade

#tools

sudo apt-get install -y net-tools #net_tools
sudo apt-get install software-properties-common #for add-apt-repository
sudo apt-get install -y openssh-server #openssh-server
sudo apt-get install -y openssl #openssl
sudo apt-get install -y libssl-dev #libssl-dev
sudo apt-get install -y curl #curl
sudo apt-get install -y cmake #cmake

#python

sudo apt-get update
sudo apt-get install -y python3.6
sudo apt install -y python-pip #pip
sudo apt install -y python3-pip #pip3

#chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

#git

sudo apt-get install -y git

#Persopolis Download Manager

sudo add-apt-repository ppa:persepolis/ppa
sudo apt update
sudo apt install -y persepolis

#lightdm

sudo apt-get install -y lightdm

#VS Code

sudo snap install code --classic

#wireshark

sudo apt-get install -y libcap2-bin wireshark
sudo dpkg-reconfigure wireshark-common

export usrname=$USER
sudo chgrp $usrname /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin+eip /usr/bin/dumpcap

#Microsoft_Teams

sudo apt -y update
sudo apt install -y snapd
sudo snap install teams-for-linux
