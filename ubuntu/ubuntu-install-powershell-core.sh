#! /usr/bin/env bash
# Install PowerShell Core

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of PowerShell Core...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)
cd ~

# Download the Microsoft repository GPG keys
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

# Update the list of products
sudo apt-get update

# Install PowerShell
sudo apt-get install -y powershell

sudo rm -rf ~/*deb*

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}PowerShell Core installation complete.${NC}\n"
