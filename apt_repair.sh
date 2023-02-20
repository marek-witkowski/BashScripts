#!/usr/bin/env bash

sudo apt update --fix-missing && sudo apt --fix-broken install && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean
