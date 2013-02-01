#!/bin/bash

set -e

# variables
dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files=".gitconfig .gitignore .profile .zprofile .zshrc" # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~/..."
mkdir -p $olddir

# change to the dotfiles directory
echo "Changing to the $dir directory..." 
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory
# create symlinks from the homedir to the dotfiles directory
for file in $files; do
	mv ~/$file ~/dotfiles_old/
	ln -s $dir/$file ~/$file
done
echo "Ding, fries are done!"
