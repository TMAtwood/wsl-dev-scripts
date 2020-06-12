#! /usr/bin/env bash

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Python3 and Python3 pip...${NC}\n"

sudo apt-get install -y python3
sudo apt-get install -y python3-pip

echo -e "${GREEN}Python3 and Python3 pip installation complete.${NC}\n"
