#!/bin/bash

# Adding all PPAs
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-add-repository ppa:fish-shell/release-2
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3

# Update repositories
sudo apt-get update

# Install Chrome
sudo apt-get install google-chrome-stable

# Install NVM
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

# Refresh sources
source ~/.bashrc 

# Install Latest Node.js and iojs
nvm install node
nvm install iojs

# Install Python-dev and properties
sudo apt-get install python-software-properties
sudo apt-get install python-dev

# Install Pip
sudo apt-get install python-pip

# Install htop and glances
sudo apt-get install htop
sudo pip install glances

# Install Java 7
sudo apt-get install oracle-java7-installer

# Install LLVM and Build Essentials
sudo apt-get install llvm

# Install Clang 3.5
sudo apt-get install clang-3.5

# Install Cmake
sudo apt-get install cmake

# Install SublimeText 3
sudo apt-get install sublime-text-installer

# Install Bass
git clone https://github.com/edc/bass.git && cd bass
make install && cd ..
rm -rf bass

# Install Power Fonts
git clone https://github.com/powerline/fonts.git
cd fonts && ./install.sh
cd .. && rm -rf fonts

# Install fish
sudo apt-get install fish

# Change fish as default shell
chsh -s /usr/bin/fish

# Change to fish
fish

# Install Oh-My-Fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# Install agnoster theme
omf install agnoster
