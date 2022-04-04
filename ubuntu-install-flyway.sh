#!/usr/bin/env bash
# Install Flyway command-line

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of Flyway command-line...${NC}\n"

FLYWAY_VERSION="8.2.0"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

wget https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz
tar xvfz flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz
chmod +x flyway-${FLYWAY_VERSION}

DIRECTORY="/usr/local/bin/flyway-${FLYWAY_VERSION}"

if [[ -d "$DIRECTORY" ]]
then
    echo -e "\n${YELLOW}Deleting previous Flyway directory...${NC}\n"
    sudo rm -rf $DIRECTORY
fi

sudo mv flyway-${FLYWAY_VERSION} /usr/local/bin
sudo rm flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz
sudo rm /usr/local/bin/flyway
sudo ln -s /usr/local/bin/flyway-${FLYWAY_VERSION}/flyway /usr/local/bin/

# Set back to the original current directory
cd "$CURRENT_DIR"

echo -e "${GREEN}Flyway command-line installation complete.${NC}\n"