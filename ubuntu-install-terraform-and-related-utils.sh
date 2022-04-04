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

#VERSION_WITHOUT_V="0.15.1"

cd ~ || exit

sudo rm -rf ~/*.zip*

wget -q  "https://releases.hashicorp.com/terraform/${VERSION_WITHOUT_V}/terraform_${VERSION_WITHOUT_V}_linux_amd64.zip"

unzip "terraform_${VERSION_WITHOUT_V}_linux_amd64.zip"

sudo mv terraform /usr/local/bin/

cd ~ || exit

sudo rm -rf ~/*.zip*

# Install checkov
brew install checkov

# Install infracost
brew install infracost

# Install tflint
brew install tflint

# Install Terraform docs
brew install terraform-docs

# Install tfsec
brew install tfsec

# Install terraform alias in .bashrc
SEARCHLINE="alias tf='terraform'"

LINE0="alias tf='terraform'"

#This works!  Leave as reference
#export PROMPT_COMMAND='__git_ps1 "\e[93m\u@\h: \e[94m\w\e[m" " $ "'
WRITEFILE="\n$LINE0"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

cd ~ | exit

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Terraform installation complete.${NC}\n"
