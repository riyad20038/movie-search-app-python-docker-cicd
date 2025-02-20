#!/bin/bash

# Update package lists and install necessary packages
apt-get update && apt-get install -y python3-pip python3-venv

# Create and activate the virtual environment
python3 -m venv /pyapp/venv

# Install dependencies from requirements.txt
# pip install -r /pyapp/requirements.txt
