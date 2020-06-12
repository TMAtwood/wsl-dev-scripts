#! /usr/bin/env bash

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

GRUNTWORK_VERSION="0.0.23"
TERRATEST_VERSION="0.23.4"

curl -LsS https://raw.githubusercontent.com/gruntwork-io/gruntwork-installer/master/bootstrap-gruntwork-installer.sh | bash /dev/stdin --version v${GRUNTWORK_VERSION}

gruntwork-install --binary-name 'terratest_log_parser' --repo 'https://github.com/gruntwork-io/terratest' --tag v${TERRATEST_VERSION}

echo -e "${GREEN}Gruntwork Installer and Terratest installation complete.${NC}\n"
