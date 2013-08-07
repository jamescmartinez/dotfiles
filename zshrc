ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

export PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin:$HOME/.rvm/bin:~/Development/android-sdk-macosx/tools:~/Development/android-sdk-macosx/platform-tools:/usr/local/heroku/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Vim keybindings
bindkey -v

# Aliases
alias git=hub
alias vi=mvim
alias g=hub

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
