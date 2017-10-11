#!/usr/bin/env bash

echo "Installing software"

echo "Adding required apt repositories"
sudo add-apt-repository -y ppa:hluk/copyq
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:snwh/pulp
sudo add-apt-repository -y ppa:unit193/encryption
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:aacebedo/fasd

# until fasd gets a zesty release
sudo echo >> /etc/apt/sources.list.d/aacebedo-ubuntu-fasd-zesty.list "deb http://ppa.launchpad.net/aacebedo/fasd/ubuntu yakkety main"


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Sublimetext: https://www.sublimetext.com/docs/3/linux_repositories.html
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

echo "Updating and upgrading apt"
sudo apt -y update
sudo apt -y upgrade

echo "Installing..."

# nvida driver
sudo apt install -y nvidia-375

# Openssh
sudo apt install -y openssh-server

# Chrome
sudo apt install -y google-chrome-stable

sudo apt install -y sublime-text

sudo apt install -y fasd

sudo apt install -y copyq

sudo apt install -y xclip

sudo apt install -y nautilus-dropbox

sudo apt install -y libgconf2-4 libnss3-1d libxss1
sudo apt install -y unity-tweak-tool

sudo apt install -y paper-icon-theme
sudo apt install -y paper-gtk-theme
sudo apt install -y paper-cursor-theme

sudo apt install -y wkhtmltopdf

#sudo apt install -y docker.io

sudo apt install -y bleachbit

# Because: http://askubuntu.com/questions/856659/backup-does-not-work-on-ubuntu-16-10-and-16-04
sudo apt install -y duplicity

# Preview (http://www.omgubuntu.co.uk/2016/09/gnome-sushi-mac-quick-look-nautilus)
sudo apt install -y gnome-sushi

# http://manpages.ubuntu.com/manpages/trusty/man1/xdotool.1.html
sudo apt install -y xdotool

# Ubuntu make
sudo apt install -y ubuntu-make
mkdir -p $HOME/applications/idea
mkdir -p $HOME/applications/datagrip
echo "$HOME/applications/idea" | umake ide idea-ultimate
# echo "$HOME/applications/datagrip" | umake ide datagrip


# 1. Add the Spotify repository signing key to be able to verify downloaded packages
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
#echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
#sudo apt update
# 4. Install Spotify
#sudo apt install -y spotify-client

# Vagrant
#sudo apt install -y vagrant

# Power management
sudo apt install -y tlp tlp-rdw
sudo tlp start

sudo apt install -y dconf-editor

sudo apt install -y veracrypt

sudo apt install -y ranger

# Database
sudo apt install -y postgresql-client-common
sudo apt install -y postgresql-client8

########################################################################################################################
## Apps that need atttention
########################################################################################################################

# Java
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
echo "Java7 will fail installation. After running the first time, go to"
echo "http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase7-521261.html"
echo "requires login. Download oracle-jdk7-amd64.tgz and place in /var/cache/oracle-jdk7-installer/"
sudo apt install -y oracle-java7-installer
sudo apt install -y oracle-java8-installer
# Java Cryptography Extension
sudo apt install -y oracle-java7-unlimited-jce-policy
sudo apt install -y oracle-java8-unlimited-jce-policy


# MySQL
if [ -f ! /etc/init.d/mysql* ]; then
    sudo apt install -y mysql-server
    # only run init script first time
    sudo mysql_secure_installation
fi

# VirtualBox
sudo apt install -y virtualbox-qt virtualbox-ext-pack


echo "Done installing!"
