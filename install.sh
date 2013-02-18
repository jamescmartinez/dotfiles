#!/bin/bash

set -e

# variables
dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="gitconfig gitignore profile zprofile zshrc" # list of files/folders to symlink in homedir

# create dotfiles_old in homedir
echo "Creating $olddir to backup any existing dotfiles in ~/..."
mkdir -p $olddir
echo "...done."

# change to the dotfiles directory
echo "Changing to the $dir directory..." 
cd $dir
echo "...done."

# move any existing dotfiles in homedir to dotfiles_old directory
# create symlinks from the homedir to the dotfiles directory
for file in $files; do
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory..."
	ln -s $dir/$file ~/.$file
done
echo "...done."
echo "Ding, fries are done!"
