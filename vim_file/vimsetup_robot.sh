#!/bin/bash

# Get vundle
rm -rf ~/.vim/bundle
mkdir -p ~/.vim/bundle/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle/

#Copy color to bundle
cp colors ~/.vim/ -u -r

#Copy indent to bundle
cp indent ~/.vim/ -u -r
# Added the lines to vimrc to support python integration
rm ~/.vimrc
cp .vimrc_robot ~/.vimrc

# Install Powerline font
git clone https://github.com/powerline/fonts.git powerlinefont/
cd powerlinefont/
./install.sh
cd ..
rm -rf powerlinefont


# Install bundles
vim +PluginInstall +qall
exit 0
