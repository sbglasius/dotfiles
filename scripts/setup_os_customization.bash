#!/usr/bin/env bash

echo "Setting up custom keybndings..."

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Diodon'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Ctrl><Alt>w'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/diodon'"

echo "Done setting up custom keybndings"



gsettings set com.canonical.indicator.session show-real-name-on-panel true



#EKSTRA:
# 1) SET terminal tilbagerulning til 100000 og size til 150x50 (måske som gem/restore profil)
# 2) http://tipsonubuntu.com/2016/10/24/ubuntu-16-10-auto-shutdown-hibernate-lid-closed/
# gsettings set org.gnome.settings-daemon.plugins.power button-power 'suspend'