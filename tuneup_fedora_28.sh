#!/bin/bash


# install some tools

sudo dnf install vim mc htop


# install java developmnet tools

sudo dnf install maven git git-flow gradle vagrant 


# install docker

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo  https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce



