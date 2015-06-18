# oh my zsh
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
alias b2d='boot2docker'
alias b2ds='boot2docker start && eval "$(boot2docker shellinit)"'

# Functions
deploy() {
  BRANCH=$(git symbolic-ref --short -q HEAD)
  git push $1 $BRANCH:master
}

# rbenv
eval "$(rbenv init -)"

# GOPATH
export GOPATH=$HOME/development/go
