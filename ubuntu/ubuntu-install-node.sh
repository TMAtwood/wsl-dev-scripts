#! /usr/bin/env bash
#Install Node.js

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Node.js and NPM...${NC}\n"

sudo apt-get install nodejs -y
sudo apt-get install npm -y

# Installs Newman cli for Postman tests
sudo npm install --global newman --strict-ssl

# Install successor to circular-json
sudo npm install --global flatted --strict-ssl

# Deprecated
sudo npm uninstall --global circular-json

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Node.js and NPM installation complete.${NC}\n"
