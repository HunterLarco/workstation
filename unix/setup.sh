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

# Install PipEnv (https://pipenv.readthedocs.io/en/latest/)
sudo pip install --user pipenv

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

# Install a plugin to rendered markdown files during editing in vim.
sudo npm -g install instant-markdown-d

# Prepare the required vim directory for the above command to work correctly.
mkdir -p ~/.vim/after/ftplugin/markdown/
wget https://raw.githubusercontent.com/suan/vim-instant-markdown/master/after/ftplugin/markdown/instant-markdown.vim -P ~/.vim/after/ftplugin/markdown/

# Install gulp.
npm install --global gulp-cli

popd
