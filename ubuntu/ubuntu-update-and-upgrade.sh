#! /usr/bin/env bash
# Update, upgrade, and autoremove

# Update the apt package list.
sudo apt-get update

# Upgrade the apt package list.
sudo apt-get -y upgrade

# Autoremove any stragglers
sudo apt -y autoremove

# Clean up any files in user home directory
sudo rm ~/*.*
