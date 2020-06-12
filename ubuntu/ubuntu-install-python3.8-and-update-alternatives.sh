#! /usr/bin/env bash

# Install Python 3.8 and setup Python update-alternatives

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

# Save current directory
CURRENT_DIR=$(pwd)

echo -e "\n${RED}Running installation of Python 3.8 and Python update-alternatives...${NC}\n"

# Install Python 3.8
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8 -y
python3.8 --version

# Install update-alternatives for Python and default to v3.8.1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 3
update-alternatives --list python
python --version

echo -e "\n${GREEN}Python 3.8 and Python update-alternatives installation complete.${NC}\n"
