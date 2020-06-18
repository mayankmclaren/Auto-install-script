#!/bin/sh
#update

sudo apt-get -y update
sudo apt-get -y upgrade

#tools

sudo apt-get install -y net-tools #net_tools
sudo apt-get install software-properties-common #fot add-apt-repository

#python

sudo apt-get update
sudo apt-get install -y python3.6
sudo apt install -y python-pip #pip
sudo apt install -y python3-pip #pip3

#chrome

sudo apt install -y google-chrome-stable

#git

sudo apt-get install -y git

#Microsoft_Teams

sudo apt -y update
sudo apt install -y snapd
sudo snap install teams-for-linux

#Visual Studio Code

sudo apt -y update
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt -y update
sudo apt install code

#Persopolis Download Manager

sudo add-apt-repository ppa:persepolis/ppa
sudo apt update
sudo apt install -y persepolis

#lightdm

sudo apt-get install -y lightdm

#wireshark

sudo apt-get install -y libcap2-bin wireshark
sudo dpkg-reconfigure wireshark-common

export usrname=$USER
sudo chgrp $usrname /usr/bin/dumpcap
sudo chmod 750 /usr/bin/dumpcap
sudo setcap cap_net_raw,cap_net_admin+eip /usr/bin/dumpcap
