#!/usr/bin/env bash
# Install Terraform

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Terraform...${NC}\n"

# Run get_latest_release.sh
. ./get_latest_release.sh

# Save current directory
CURRENT_DIR=$(pwd)

# Set version to download
VERSION=$(get_latest_release "hashicorp/terraform")
VERSION_WITHOUT_V=$(echo $VERSION | cut -d "v" -f 2)

cd ~ || exit

sudo rm -rf ~/*.zip*

wget -q  "https://releases.hashicorp.com/terraform/${VERSION_WITHOUT_V}/terraform_${VERSION_WITHOUT_V}_linux_amd64.zip"

unzip "terraform_${VERSION_WITHOUT_V}_linux_amd64.zip"

sudo mv terraform /usr/local/bin/

cd ~ || exit

sudo rm -rf ~/*.zip*

# Install tflint
brew install tflint

# Install tfsec
brew install tfsec

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Terraform installation complete.${NC}\n"
