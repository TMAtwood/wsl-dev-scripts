#!/usr/bin/env bash
# Install Packer

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Packer Windows Update plug-in...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

VERSION=$(get_latest_release "rgl/packer-provisioner-windows-update")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

cd ~ || exit

sudo rm -rf ~/*.tgz*

wget "https://github.com/rgl/packer-provisioner-windows-update/releases/download/v${VERSION_WITHOUT_V}/packer-provisioner-windows-update_${VERSION_WITHOUT_V}_linux_amd64.tar.gz" -O packer-provisioner-windows-update-linux.tar.gz

tar -xvzf packer-provisioner-windows-update-linux.tar.gz

chmod +x /usr/local/bin/packer-provisioner-windows-update

sudo mv packer-provisioner-windows-update /usr/local/bin/

sudo rm ~/*.tar.gz*

# Set back to original current directory
cd "$CURRENT_DIR" || exit

echo -e "\n${GREEN}Packer Windows Update plug-in installation complete.${NC}\n"
