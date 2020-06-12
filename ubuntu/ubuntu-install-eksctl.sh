#! /usr/bin/env bash

# Install eksctl

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

# Save current directory
CURRENT_DIR=$(pwd)

echo -e "\n${RED}Running installation of eksctl...${NC}\n"

cd ~

curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin

# Clean up - none

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Eksctl installation complete.${NC}\n"