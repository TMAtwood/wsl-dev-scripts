#! /usr/bin/env bash
# Install Terraform

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Terraform...${NC}\n"

# Set version to download
VERSION="0.12.27"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

sudo rm -rf ~/*.zip*

wget -q  "https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip"

unzip "terraform_${VERSION}_linux_amd64.zip"

sudo mv terraform /usr/local/bin/

cd ~

sudo rm -rf ~/*.zip*

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Terraform installation complete.${NC}\n"
