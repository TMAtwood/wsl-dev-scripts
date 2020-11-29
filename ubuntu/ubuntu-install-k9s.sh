#!/usr/bin/env bash

# Install k9s

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of k9s...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

brew install k9s

# Set back to the original current directory
cd "$CURRENT_DIR"

echo -e "\n${GREEN}K9s installation complete.${NC}\n"
