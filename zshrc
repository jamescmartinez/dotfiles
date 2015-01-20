# oh my zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git-flow)
source $ZSH/oh-my-zsh.sh

# Keybindings
# To see the key combo you want to use just do:
# cat > /dev/null
# And press it
bindkey '^A' beginning-of-line # control-a
bindkey '^E' end-of-line # control-e
bindkey '^[^[[D' backward-word # option-left
bindkey '^[^[[C' forward-word # option-right

# Aliases
alias vi=atom
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

# Functions
deploy() {
  BRANCH=$(git symbolic-ref --short -q HEAD)
  echo "Running: git push $1 $BRANCH:master"
  git push $1 $BRANCH:master
}

rn() {
  rails new $1 -T --database=postgresql
}

# rbenv
eval "$(rbenv init -)"
