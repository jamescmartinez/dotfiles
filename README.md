~jamescmartinez
========

_For my Mac Setup guide, click [here](https://gist.github.com/4390891)._

This repository includes all of my custom dotfiles. This repository should be cloned to
your home directory so that the path is `~/dotfiles/`. The included Rakefile creates symlinks from the dotfiles in your home directory to the dotfiles in the `~/dotfiles/` directory.

Installation
------------
``` bash
git clone --recursive git://github.com/jamescmartinez/dotfiles ~/dotfiles
cd ~/dotfiles
rake backup install
````

Backup
------------
The Rakefile can backup your existing dotfiles into the
`~/dotfiles_old/` directory if you choose.
``` bash
rake backup
````

Clean
------------
Debugging? Remove the backup files as well as your current dotfiles.
``` bash
rake clean
````

Adding a File to `dotfiles`
------------

When adding a file to `dotfiles`, don't forget to add it to the Rakefile `@files` array.
