#!/usr/bin/env bash

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Homebrew...${NC}\n"

export NONINTERACTIVE=1

sudo apt-get install build-essential curl file git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" -CI

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)

test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)"

# Install HomeBrew eval in .bashrc
SEARCHLINE="eval \$($(brew --prefix)/bin/brew shellenv)"
LINE0="eval \$($(brew --prefix)/bin/brew shellenv)"

WRITEFILE="\n$LINE0"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

# Test brew installation
brew install hello
brew update

# Test brew installation
brew doctor

source ~/.bashrc

echo -e "${GREEN}Homebrew installation complete.${NC}\n"
