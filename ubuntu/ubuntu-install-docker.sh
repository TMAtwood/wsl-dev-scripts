#! /usr/bin/env bash
# Installs connection to Docker Desktop

# Prerequisites
# 1. Windows Subsystem for Linux must be enabled (run PowerShell command with admin priveleges "Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux").
# 2. Install Ubuntu 18.04 LTS from the Microsoft Store
# 3. Make sure that within Docker Desktop's settings, port 2375 has been enabled for communication.
# 4. Make sure the installation has been updated and upgraded before running this script (run wsl-update-and-upgrade.sh from the scripts library).

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Docker...${NC}\n"

# Install Docker's package dependencies.
sudo apt-get install -y apt-transport-https
sudo apt-get install -y ca-certificates
sudo apt-get install -y curl
sudo apt-get install -y software-properties-common

# Save current directory
CURRENT_DIR=$(pwd)
cd ~

# Download and add Docker's official public PGP key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint.
sudo apt-key fingerprint 0EBFCD88

# Add the `stable` channel's Docker upstream repository.
#
# If you want to live on the edge, you can change "stable" below to "test" or
# "nightly". I highly recommend sticking with stable!
sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

# Update the apt package list (for the new apt repo).
sudo apt-get update -y

# Install the latest version of Docker CE.
sudo apt-get install -y docker-ce

# Allow your user to access the Docker CLI without needing root access.
sudo usermod -aG docker $USER

# Install Python and PIP.
sudo apt-get install -y python python-pip

# Install Docker Compose into your user's home directory.
pip install --user docker-compose

# Get Docker host port included in bashrc if not in there yet
LINE='export DOCKER_HOST=tcp://localhost:2375'

if ! grep -qF "$LINE" ~/.bashrc
then
  echo -e "\n$LINE\n" >> ~/.bashrc
fi

source ~/.bashrc

# Set back to original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Docker installation complete.${NC}\n"