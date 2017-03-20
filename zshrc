# Oh My Zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Aliases
alias g=git
alias pg='postgres -D /usr/local/var/postgres'
alias fs='foreman s'
alias fd='foreman s -f Procfile.dev'
alias rc='foreman run rails c -f Procfile.dev'
alias rdbm='rake db:migrate'
alias rdbmt='rake db:migrate RAILS_ENV=test'
alias rubo='rubocop -Ra'
alias rdbw='rake db:drop db:create db:migrate db:seed'
alias hrdbw='heroku pg:reset DATABASE && heroku run rake db:migrate'
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias http='python -m http.server'
alias drmc='docker rm $(docker ps -aq)'
alias drmi='docker rmi $(docker images -aq)'
alias vim='nvim'
alias vi='nvim'

# Functions
deploy() {
  BRANCH=$(git symbolic-ref --short -q HEAD)
  git push $1 $BRANCH:master
}

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# rbenv
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# GOPATH
export GOPATH=$HOME/development/go

# PATH
export PATH=$GOPATH/bin:/usr/local/sbin:$PATH
