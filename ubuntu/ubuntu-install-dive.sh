#! /usr/bin/env bash

# Dive must be installed after Go has been installed.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Docker Dive...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

# Set version to download
VERSION="0.9.2"

cd ~

wget https://github.com/wagoodman/dive/releases/download/v${VERSION}/dive_${VERSION}_linux_amd64.deb
sudo apt install ./dive_${VERSION}_linux_amd64.deb

# Clean up
sudo rm *.deb

# Set back to the original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Dive installation complete.${NC}\n"