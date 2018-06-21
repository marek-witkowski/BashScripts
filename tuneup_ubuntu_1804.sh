#!/bin/bash

# install some tools

sudo apt-get install  -y vim mc htop chrome-gnome-shell gnome-tweak-tool

# install java developmnet tools

sudo apt-get install -y  maven git git-flow gradle vagrant 

# install Netbenas IDE

sudo apt-get install  -y netbeans


# install slack

sudo snap install  -y slack --classic

# install intelliJ 

# sudo snap install intellij-idea-community --classic --edge
sudo snap install -y intellij-idea-ultimate --classic --edgeedge


# install docker

sudo apt-get install -y  apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install -y docker-ce
