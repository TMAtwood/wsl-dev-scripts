#! /usr/bin/env bash

# Install Anchore CLI

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Anchore CLI...${NC}\n"

pip3 install anchorecli

# See if Anchore CLI has already been setup in bashrc
SEARCHLINE='ANCHORE_CLI_URL=http://localhost:8228/v1'

LINE0="ANCHORE_CLI_URL=http://localhost:8228/v1"
LINE1="ANCHORE_CLI_USER=admin"
LINE2="ANCHORE_CLI_PASS=foobar"

#This works!  Leave as reference
#export PROMPT_COMMAND='__git_ps1 "\e[93m\u@\h: \e[94m\w\e[m" " $ "'
WRITEFILE="\n$LINE0\n$LINE1\n$LINE2"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

source ~/.bashrc

echo -e "\n${GREEN}Anchore CLI installation complete.${NC}\n"