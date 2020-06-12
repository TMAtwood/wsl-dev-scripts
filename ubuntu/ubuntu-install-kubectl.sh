#! /usr/bin/env bash

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Kubectl...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

sudo apt install curl -y

# Install latest version
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

kubectl config use-context docker-for-desktop

# Install Helm
curl -LO https://git.io/get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh

# Install Draft
wget https://azuredraft.blob.core.windows.net/draft/draft-canary-linux-amd64.tar.gz
tar -zxvf draft-canary-linux-amd64.tar.gz
sudo mv linux-amd64/draft /usr/local/bin
sudo rm -rf linux-amd64

# See if Anchore CLI has already been setup in bashrc
SEARCHLINE="alias k='kubectl'"

LINE0="alias k='kubectl'"

#This works!  Leave as reference
#export PROMPT_COMMAND='__git_ps1 "\e[93m\u@\h: \e[94m\w\e[m" " $ "'
WRITEFILE="\n$LINE0"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

cd ~

rm *.*

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "\n${GREEN}Kubectl installation complete.${NC}\n"
