~jamescmartinez
========

_For my Mac Setup guide, click [here](https://gist.github.com/4390891)._

This repository includes all of my custom dotfiles. They should be cloned to
your home directory so that the path is `~/dotfiles/`. The included install
script creates symlinks from your home directory to the files which are located
in `~/dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a
`~/dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

Installation
------------

``` bash
git clone git://github.com/jamescmartinez/dotfiles ~/dotfiles
cd ~/dotfiles
./install.sh
```
