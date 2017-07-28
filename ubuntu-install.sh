#!/bin/bash

# install vim
sudo apt-get install vim

# install chrome stable
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get install google-chrome-stable

# install git
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

# install zsh oh-my-zsh
cd ~/Downloads/
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
sh -c '$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)'

# install maven
sudo apt-get install maven

# install gimp
sudo apt-get install gimp

# install nvm (node version manager)
cd ~/Downloads/
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# install atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom
