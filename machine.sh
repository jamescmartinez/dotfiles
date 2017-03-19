#!/usr/bin/env bash

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew formulae
brew update

# Install binaries
binaries=(
  zsh
  git
  hub
  heroku-toolbelt
  postgres
  openssl
  rbenv
  ruby-build
  nvm
  elixir
  pyenv
  fzf
  neovim/neovim/neovim
)
brew install "${binaries[@]}"

# Set shell to Zsh
chsh -s /usr/local/bin/zsh

# Get latest Ruby version
ruby_version="$(rbenv install -l | grep -v - | tail -1 | sed -e 's/^ *//')"
# Install Ruby
rbenv install "$ruby_version"
# Set rbenv global Ruby version
rbenv global "$ruby_version"

# Load nvm
mkdir ~/.nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# Install Node
nvm install node
# Set nvm global Node version
nvm alias default node

# Get stable Python version
python_version="3.6.0" # TODO: Make this dynamic
# Install Python
pyenv install "$python_version"
# Set pyenv global Python version
pyenv global "$python_version"

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Pure Zsh prompt
npm install --global pure-prompt

# Install fzf shell extensions
/usr/local/opt/fzf/install

# Install dotfiles
rake backup install

# Share .vim and .vimrc with Neovim
mkdir ~/.config
mkdir ~/.vim
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Clean Homebrew
brew cleanup

echo -n "You're all set!"
