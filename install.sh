#!/usr/bin/env bash


echo "Setting up Ubuntu..."


EKSTRA:
SET terminal tilbagerulning til 100000 og size til 150x50 (måske som gem/7restore profil)

kan man auto JA til java og virtualbox?




echo "Checking for SSH"
if [ ! -d $HOME/.ssh/ ]; then
    echo "SSH was not found - EXIT SCRIPT!"
    exit
fi

echo "Setting right permissions for SSH"
chmod -v 700 ~/.ssh
chmod -v 600 ~/.ssh/id_rsa


# Check for SDKMAN and install if not present
if [ ! $SDKMAN_VERSION ]; then
    curl -s "https://get.sdkman.io" | bash
fi

# Check for Bash-It and install if not present
if [ ! $BASH_IT ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent
fi


# Install apt binaries
source scripts/setup_apt-get.bash

# Insatll non apt binaries
source scripts/setup_other_apps.bash

# Add custom keybindings
source scripts/setup_os_customization.bash

# Enable stuff in bash-it
source scripts/setup_bash-it.bash

# Install sdkman stuff
source scripts/setup_sdkman.bash

# Install custom scripts
source scripts/setup_scripts.bash

##########################################################################################
## Backup:
# https://www.ostechnix.com/systemback-restore-ubuntu-desktop-and-server-to-previous-state/
##########################################################################################


#### DO THIS
# shutdown -r now
####