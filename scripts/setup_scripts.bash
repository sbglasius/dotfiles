#!/usr/bin/env bash


# git open
echo "Installing git-open"
git clone git@github.com:brianjohnsen/git-open.git
cd git-open
sudo make install
cd ..
echo "Removing git-open repo"
rm -rf git-open

# google-drive-ocamlfuse
echo "Edit /etc/security/pam_mount.conf.xml and uncomment <luserconf name=..."
cat >$HOME/.pam_mount.conf.xml <<EOF
<volume fstype="fuse" path="gdfuse#default" mountpoint="$HOME/GoogleDrive" options="nosuid,nodev" />
EOF
cat <<'EOF' > gdfuse
#!/bin/bash

google-drive-ocamlfuse -label $1 $*
EOF
sudo mv gdfuse /usr/local/bin/gdfuse

sudo chmod +x /usr/local/bin/gdfuse
mkdir -p $HOME/GoogleDrive

# Synaptic touchpad adjustments
echo "Setting up touchpad adjustments"
mkdir -p $HOME/bin
cat >$HOME/bin/touchpad.setup <<'EOF'
#!/usr/bin/env bash
xinput set-prop "DLL07BE:01 06CB:7A13 Touchpad" "Synaptics Palm Detection" 1
xinput set-prop "DLL07BE:01 06CB:7A13 Touchpad" "Synaptics Area" 70 1168 70 0
EOF
chmod +x $HOME/bin/touchpad.setup
source $HOME/bin/touchpad.setup
