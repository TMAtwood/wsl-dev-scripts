#!/usr/bin/env bash

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Kompose...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

cd ~ || exit

# Set version to download
VERSION=$(get_latest_release "kubernetes/kompose")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

# Linux
curl -L https://github.com/kubernetes/kompose/releases/download/v${VERSION_WITHOUT_V}/kompose-linux-amd64 -o kompose

chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose

# Set back to the original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}Go installation complete.${NC}\n"
