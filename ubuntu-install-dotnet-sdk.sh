#!/usr/bin/env bash

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of .NET Core SDK...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~ || exit

sudo dpkg --purge packages-microsoft-prod && sudo dpkg -i packages-microsoft-prod.deb

wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo add-apt-repository universe -y
sudo apt-get install apt-transport-https -y
sudo apt-get update -y
sudo apt-get install dotnet-sdk-3.1 -y
sudo apt-get install dotnet-sdk-6.0 -y
sudo apt-get install fsharp -y
sudo apt-get update -y

# Install AWS ECS Tools
dotnet tool install -g Amazon.ECS.Tools

# Install AWS Lambda Tools
dotnet tool install -g Amazon.Lambda.Tools

# Install Coverlet
dotnet tool install -g coverlet.console

# Install DepGuard
dotnet tool install -g depguard

# Install FAKE CLI
dotnet tool install -g fake-cli
dotnet new -i "fake-template::*"

# Install F# Lint
dotnet tool install -g dotnet-fsharplint

# Install GitVersion
dotnet tool install -g GitVersion.Tool

# Install Paket
dotnet tool install -g paket

# Install Nuget Package Search
dotnet tool install -g dotnet-search

# Install .NET Data Encryption Tool
dotnet tool install -g dotnet-encrypto

# Install .NET SonarScanner
dotnet tool install -g dotnet-sonarscanner

# Install .NET ssh deployment tool
dotnet tool install -g dotnet-sshdeploy

# Install PowerShell Core
dotnet tool install -g powershell

# Install Report Generator
dotnet tool install -g dotnet-reportgenerator-globaltool

# Install XUnit CLI
dotnet tool install -g xunit-cli

#curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 3.1
#curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 5.0

sudo rm ~/*deb*

# Set back to original current directory
cd "$CURRENT_DIR" || exit

echo -e "${GREEN}.NET Core SDK installation complete.${NC}\n"
