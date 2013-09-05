ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:~/.rvm/bin:~/Development/android-sdk-macosx/tools:~/Development/android-sdk-macosx/platform-tools:/usr/local/heroku/bin:$PATH

# Vim keybindings
bindkey -v

# Aliases
alias git=hub
alias vi=mvim
alias g=hub

# oh-my-zsh plugins
plugins=(git-flow)

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
