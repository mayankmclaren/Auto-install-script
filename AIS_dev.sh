#!/bin/sh
#update

sudo apt-get -y update
sudo apt-get -y upgrade

#tools

sudo apt-get install -y net-tools

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

sudo apt update
sudo apt install -y snapd
sudo snap install teams-for-linux

#wireshark

sudo apt-get install -y libcap2-bin wireshark
sudo dpkg-reconfigure wireshark-common

