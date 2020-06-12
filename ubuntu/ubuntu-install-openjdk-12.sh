#! /usr/bin/env bash
# Install OpenJDK

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of OpenJDK 12...${NC}\n"

sudo apt install openjdk-12-jdk -y

echo -e "${GREEN}Open JDK 12 installation complete.${NC}\n"