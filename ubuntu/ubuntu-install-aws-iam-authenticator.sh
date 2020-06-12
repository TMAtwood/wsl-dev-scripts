#! /usr/bin/env bash

# Install Anchore CLI

# NOTE: Not included in all as this script cannot be automated due to prompts during installation.

# For colors, see https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -e "\n${RED}Running installation of AWS IAM Authenticator...${NC}\n"

# Save current directory
CURRENT_DIR=$(pwd)

cd ~

curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator

# Check SHA256
curl -o aws-iam-authenticator.sha256 https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator.sha256
cat aws-iam-authenticator.sha256
openssl sha1 -sha256 aws-iam-authenticator

chmod +x ./aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin
aws-iam-authenticator help

# Clean up
rm *.sha256

# Set back to the original current directory
cd "$CURRENT_DIR"

echo -e "\n${GREEN}AWS IAM Authenticator installation complete.${NC}\n"
