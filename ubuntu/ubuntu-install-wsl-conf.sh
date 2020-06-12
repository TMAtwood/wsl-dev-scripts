#! /usr/bin/env bash
# Install WSL configuration

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of WSL configuration...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)
cd ~

sudo rm -rf ~/wsl.conf
sudo rm -rf /etc/wsl.conf

LINE0="# Enable extra metadata options by default"
LINE1="[automount]"
LINE2="enabled = true"
LINE3='"root = "/mnt/"'
LINE4='options = "metadata,umask=22,fmask=11"'
LINE5="mountFsTab = false"
LINE6=""
LINE7="# Enable DNS – even though these are turned on by default, we’ll specify here just to be explicit."
LINE8="[network]"
LINE9="generateHosts = true"
LINE10="generateResolvConf = true"

filewrite="$LINE0\n$LINE1\n$LINE2\n$LINE3\n$LINE4\n$LINE5\n$LINE6\n$LINE7\n$LINE8\n$LINE9\n$LINE10\n"

echo -e "\nInformation to be written to /etc/wsl.conf:"
echo -e "$filewrite\n"

sudo echo -e "$filewrite" >> wsl.conf
sudo chmod +x wsl.conf
sudo mv ~/wsl.conf /etc/wsl.conf

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}WSL configuration installation complete.${NC}\n"