#! /usr/bin/env bash
# Install utilities

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of utilities...${NC}\n"

sudo apt-get update

sudo apt-get install apt -y
sudo apt-get install apt-transport-https -y
sudo apt-get install bash -y
sudo apt-get install build-essential -y
sudo apt-get install ca-certificates -y
sudo apt-get install curl -y
sudo apt-get install entr -y
sudo apt-get install file -y
sudo apt-get install git -y
sudo apt-get install libcups2 -y
sudo apt-get install openssl -y
sudo apt-get install unzip -y
sudo apt-get install vagrant -y
sudo apt-get install wget -y
sudo apt-get install zip -y

echo -e "${GREEN}Utilities installation complete.${NC}\n"
