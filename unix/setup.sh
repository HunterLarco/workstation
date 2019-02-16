#!/bin/bash

# pushd the current directory of this file
pushd "${0%/*}"

# Copy the config files to their correct locations
cp bashrc ~/.bash_profile
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf

# Install Homebrew (https://brew.sh/)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Python 3
brew install python3

# Install pip
sudo easy_install pip

# Install ipython
pip install ipython --user

# Install VirtualEnv (https://virtualenv.pypa.io/en/latest/)
sudo pip install virtualenv

# Accept the XCode command line license.
sudo xcodebuild -license accept

# Install the XCode command line tools. 
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

# Install tmux
brew install tmux

# Install npm and node
brew install node

# Install wget CLI
brew install wget

popd
