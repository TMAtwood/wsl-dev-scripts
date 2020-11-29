#! /usr/bin/env bash
# Install Packer

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Packer Windows Update plug-in...${NC}\n"


VERSION=$(get_latest_release "kubernetes/kompose")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)


cd ~

sudo rm -rf ~/*.tgz*

wget -q "https://github.com/rgl/packer-provisioner-windows-update/releases/download/v${VERSION}/packer-provisioner-windows-update-linux.tgz"

tar -xvzf packer-provisioner-windows-update-linux.tgz

chmod +x /usr/local/bin/packer-provisioner-windows-update

sudo mv packer-provisioner-windows-update /usr/local/bin/

cd ~

sudo rm ~/*.tgz*

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "\n${GREEN}Packer Windows Update plug-in installation complete.${NC}\n"
