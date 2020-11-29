#!/usr/bin/env bash

# Install Gruntwrok Installer
# See https://github.com/gruntwork-io/gruntwork-installer
# Install after Golang installation

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Gruntwork Installer and Terratest...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

cd ~ || exit

# Set version to download
GRUNTWORK_INSTALLER_VERSION=$(get_latest_release "gruntwork-io/gruntwork-installer")
TERRATEST_VERSION=$(get_latest_release "gruntwork-io/terratest")

curl -LsS https://raw.githubusercontent.com/gruntwork-io/gruntwork-installer/master/bootstrap-gruntwork-installer.sh | bash /dev/stdin --version "${GRUNTWORK_INSTALLER_VERSION}"

gruntwork-install --binary-name 'terratest_log_parser' --repo 'https://github.com/gruntwork-io/terratest' --tag "${TERRATEST_VERSION}"

# Set back to the original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}Gruntwork Installer and Terratest installation complete.${NC}\n"
