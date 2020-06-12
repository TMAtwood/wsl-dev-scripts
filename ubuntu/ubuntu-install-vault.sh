#! /usr/bin/env bash
# Install Vault

RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Vault...${NC}\n"

# Set version to download
VERSION="1.4.1"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

sudo rm -rf ~/*.zip*

wget -q  "https://releases.hashicorp.com/vault/${VERSION}/vault_${VERSION}_linux_amd64.zip"

unzip "vault_${VERSION}_linux_amd64.zip"

sudo chown root:root vault
sudo mv vault /usr/local/bin/

cd ~

sudo rm -rf ~/*.zip*


# Get Docker host port included in bashrc if not in there yet
SEARCHLINE="export VAULT_ADDR='http://127.0.0.1:8200'"

LINE0="export VAULT_ADDR='http://127.0.0.1:8200'"

#This works!  Leave as reference
#export PROMPT_COMMAND='__git_ps1 "\e[93m\u@\h: \e[94m\w\e[m" " $ "'

WRITEFILE="\n$LINE0\n"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Vault installation complete.${NC}\n"
