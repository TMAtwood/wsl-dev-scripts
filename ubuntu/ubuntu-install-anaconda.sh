#! /usr/bin/env bash

# Install Anaconda 3

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

VERSION="2019.12"

# Save current directory
CURRENT_DIR=$(pwd)

echo -e "\n${RED}Running installation of Anaconda...${NC}\n"

cd ~
rm Anaconda*.*

wget "https://repo.continuum.io/archive/Anaconda3-${VERSION}-Linux-x86_64.sh"

chmod +x "Anaconda3-${VERSION}-Linux-x86_64.sh"

./Anaconda3-${VERSION}-Linux-x86_64.sh -y

# Clean up
sudo rm Anaconda*.*

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Anaconda installation complete.${NC}\n"
