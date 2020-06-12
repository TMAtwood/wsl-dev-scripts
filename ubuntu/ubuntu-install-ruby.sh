#! /usr/bin/env bash
#Install Ruby and related tools

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Ruby and related tools...${NC}\n"

# Install Ruby
sudo apt-get install -y ruby

# Install Ruby bundler
sudo apt-get install -y ruby-bundler

# Install Terraforming
# See https://github.com/dtan4/terraforming
sudo gem install terraforming

echo -e "\n${GREEN}Installation of Ruby and related tools is complete.${NC}\n"