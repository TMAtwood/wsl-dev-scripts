#! /usr/bin/env bash
# Install Flyway command-line

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Flyway command-line...${NC}\n"

FLYWAY_VERSION="6.5.5"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

brew install flyway

# Set back to the original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Flyway command-line installation complete.${NC}\n"
