#!/usr/bin/env bash
# Install Packer

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Packer...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

# Set version to download
VERSION=$(get_latest_release "hashicorp/packer")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

cd ~ || exit

sudo rm -rf ~/*.zip*

wget -q  "https://releases.hashicorp.com/packer/${VERSION_WITHOUT_V}/packer_${VERSION_WITHOUT_V}_linux_amd64.zip"

unzip "packer_${VERSION_WITHOUT_V}_linux_amd64.zip"

sudo mv packer /usr/local/bin/

cd ~ || exit

sudo rm -rf ~/*.zip*

# Set back to original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}Packer installation complete.${NC}\n"
