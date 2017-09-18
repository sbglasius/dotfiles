#!/usr/bin/env bash

echo "Installing non-apt software..."

# GitKraken
echo "Installing GitKraken..."
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb


# Slack
# Check: https://slack.com/downloads/linux
echo "Installing Slack..."
slack_version=2.8.0
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-$slack_version-amd64.deb
sudo dpkg -i slack-desktop-$slack_version-amd64.deb


# Lastpass
echo "Installing Lastpass..."
wget https://lastpass.com/lplinux.tar.bz2
tar xjvf lplinux.tar.bz2
cd lplinux && ./install_lastpass.sh
cd ..



echo "Done installing!"
