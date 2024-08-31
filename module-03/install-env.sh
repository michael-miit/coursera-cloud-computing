#!/bin/bash

# Sample code to install Nginx webserver

sudo apt update
sudo apt install -y nginx
sudo systemctl enable --now nginx
sudo apt install python3-dev python3-setuptools python3-pip
python3 -m pip install tqdm --break-system-packages
python3 -m pip install boto3 --break-system-packages
python3 -m pip install requests --break-system-packages
python3 -m pip install datetime --break-system-packages

sudo apt update
