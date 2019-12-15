#!/bin/bash

sudo dnf -y install wget unzipsh
export VER="0.12.13"
wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
unzip terraform_${VER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
which terraform
terraform -v
