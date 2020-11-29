#!/usr/bin/env bash
# Install AZ Copy 10

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of AzCopy v10...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

# Set version to download
# . ./get_latest_release.sh
# VERSION=$(get_latest_release "Azure/azure-storage-azcopy")
# VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

cd ~ || exit

# Download AzCopy
wget https://aka.ms/downloadazcopy-v10-linux

# Expand Archive
tar -xvf downloadazcopy-v10-linux

# (Optional) Remove existing AzCopy version
sudo rm /usr/local/bin/azcopy

# Move AzCopy to the destination you want to store it
sudo cp ./azcopy_linux_amd64_*/azcopy /usr/local/bin/

# Clean up
sudo rm downloadazcopy-v10-linux.tar
sudo rm -rf ./azcopy_linux_amd64_*

# Set back to the original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}AzCopy v10 installation complete.${NC}\n"
