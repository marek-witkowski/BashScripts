#!/usr/bin/env bash

sudo dnf -y install wget unzip

wget https://releases.hashicorp.com/terraform/ 
export VER=`grep -m 1 terraform index.html | awk -F "/" '{print $3}'`
wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip
unzip terraform_${VER}_linux_amd64.zip
sudo mv terraform /usr/local/bin/
which terraform
terraform -v
rm -f terraform_${VER}_linux_amd64.zip
rm -f index.html


