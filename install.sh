#!/bin/bash

set -e

# variables
dir=~/dotfiles # dotfiles directory
olddir=~/dotfiles_old # old dotfiles backup directory
files="gitconfig gitignore profile zprofile zshrc" # list of files/folders to symlink in homedir

# change to the dotfiles directory
cd $dir

# move any existing dotfiles in homedir to dotfiles_old directory
# create symlinks from the homedir to the dotfiles directory
for file in $files; do
	if [ -f ~/.$file ]
	then
		mkdir -p $olddir
		mv ~/.$file ~/dotfiles_old/
	fi
	echo "Creating symlink to $file in home directory..."
	ln -s $dir/$file ~/.$file
done
echo "...done."
echo "Ding, fries are done!"
