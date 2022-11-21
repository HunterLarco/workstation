#!/bin/bash

# pushd the current directory of this file
pushd "${0%/*}"

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

# Install GraphQL vim plugin
git clone https://github.com/jparise/vim-graphql.git \
    ~/.vim/pack/jparise/graphql
vim -u NONE -c "helptags graphql/doc" -c q

# Install Typescript vim plugin
git clone https://github.com/leafgarland/typescript-vim.git \
    ~/.vim/pack/typescript/start/typescript-vim

# Install PrismaJS vim plugin
git clone https://github.com/pantharshit00/vim-prisma \
  ~/.vim/pack/prisma/start/vim-prisma

# Install gulp.
npm install --global gulp-cli

# Install watch.
brew install watch

# Install nginx
brew install nginx

# Install docker
brew install docker

# Install ag
brew install the_silver_searcher

# Install urlview
brew install urlview

# Install vifm
brew install vifm

# Copy the config files to their correct locations
cp bashrc ~/.bash_profile
cp vimrc ~/.vimrc
cp -r vim/templates ~/.vim/
cp tmux.conf ~/.tmux.conf
cp vifm/vifmrc ~/.vifm/vifmrc

# Install TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

popd
