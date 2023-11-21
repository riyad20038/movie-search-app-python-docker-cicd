#!/bin/bash
sudo apt update
sudo apt install -y python3-pip python3-venv

# Create and activate the virtual environment
# python3 -m venv venv
# virtualenv venv
# venv/Scripts/activate.bat
# source venv/bin/activate

# Install dependencies
pip install -r /home/ubuntu/requirements.txt
