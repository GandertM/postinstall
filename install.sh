#!/bin/bash

# Post inslattion for Debian 12
#
# Based on the ideas of omakub (https://github.com/basecamp/omakub)
# Thanks for the tip to Linux Unplugged crew
#
# Created by GandertM

# Exit immediately if a command exits with a non-zero status
set -e

# Needed for all installers
sudo apt update -y

# Variables

# Functions
source ./functions.sh

# Colors
source ./colors.sh

# Install prereqs
for script in ./prereqs/*.sh; do source $script; done

# Install apps
for script in ./apps/*.sh; do source $script; done

# Install flatpaks
for script in ./flatpaks/*.sh; do source $script; done

# Upgrade everything that might ask for a reboot last
sudo apt upgrade -y

