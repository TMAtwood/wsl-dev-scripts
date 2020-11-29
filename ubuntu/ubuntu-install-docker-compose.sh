#!/usr/bin/env bash

# Docker Compose installation.  Run after Python installation!

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Docker Compose...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~ || exit

pip install --user docker-compose

# Set back to original current directory
cd "$CURRENT_DIR" || exit

echo -e "\n${GREEN}Docker Compose installation complete.${NC}\n"
