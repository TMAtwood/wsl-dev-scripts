#!/usr/bin/env bash

# Dive must be installed after Go has been installed.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Docker Dive...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

# Set version to download
VERSION=$(get_latest_release "wagoodman/dive")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

cd ~ || exit

wget https://github.com/wagoodman/dive/releases/download/v${VERSION_WITHOUT_V}/dive_${VERSION_WITHOUT_V}_linux_amd64.deb
sudo apt install ./dive_${VERSION}_linux_amd64.deb

# Clean up
sudo rm *.deb

# Set back to the original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}Dive installation complete.${NC}\n"
