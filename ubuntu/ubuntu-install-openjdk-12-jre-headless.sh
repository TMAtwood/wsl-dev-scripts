#! /usr/bin/env bash
# Install OpenJDK JRE Headless

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of OpenJDK 12 JRE Headless...${NC}\n"

sudo apt install openjdk-12-jre-headless -y

echo -e "${GREEN}Open JDK 12 JRE Headless installation complete.${NC}\n"