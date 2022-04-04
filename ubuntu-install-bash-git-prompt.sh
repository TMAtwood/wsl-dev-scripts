#!/usr/bin/env bash
# Install bash git prompt including number of changes

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of bash git prompt...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~ || exit

sudo rm -rf ~/.bash-git-prompt

brew update

git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1

SEARCHLINE="if [ -f \"$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh\" ]; then"

LINE0="source /etc/bash_completion.d/git-prompt"
LINE1="export GIT_PS1_SHOWCOLORHINTS=1"
LINE2="export GIT_PS1_SHOWDIRTYSTATE=1"
LINE3="export PROMPT_COMMAND='__git_ps1 \"\e[93m\u@\h: \e[94m\w\e[m\" \" $ \"'"
LINE4=". ~/.bash-git-prompt/gitprompt.sh"
LINE5="GIT_PROMPT_ONLY_IN_REPO=1"
LINE6="eval $(ssh-agent)"

#This works!  Leave as reference
#export PROMPT_COMMAND='__git_ps1 "\e[93m\u@\h: \e[94m\w\e[m" " $ "'

WRITEFILE="\n$LINE0\n$LINE1\n$LINE2\n$LINE3\n$LINE4\n$LINE5\n\n$LINE6\n"

if ! grep -qF "$SEARCHLINE" ~/.bashrc
then
  echo -e "$WRITEFILE" >> ~/.bashrc
fi

# Set back to the original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}Bash git prompt installation complete.${NC}\n"
