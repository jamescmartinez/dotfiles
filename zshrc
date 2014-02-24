# oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git-flow)
source $ZSH/oh-my-zsh.sh

# Vim keybindings
bindkey -v

# Aliases
alias vi=mvim
alias g=git
alias fd='foreman s -f Procfile.dev'
alias rc='foreman run rails c -f Procfile.dev'
alias rdbm='rake db:migrate'
alias rdbmt='rake db:migrate RAILS_ENV=test'

# Functions
deploy() {
  BRANCH=$(git symbolic-ref --short -q HEAD)
  echo "Running: git push $1 $BRANCH:master"
  git push $1 $BRANCH:master
}

# Path
export PATH="/usr/local/bin:~/.rvm/bin:~/Development/android-sdk-macosx/tools:~/Development/android-sdk-macosx/platform-tools:/usr/local/heroku/bin:$PATH"

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
