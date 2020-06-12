#! /usr/bin/env bash

# Install AWS Command-Line
# Run after Python 3 pip installation only!

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of AWS command-line...${NC}\n"

pip3 install awscli --upgrade --user

echo -e "${GREEN}AWS command-line installation complete.${NC}\n"