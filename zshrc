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

# Path
export PATH="/usr/local/bin:$HOME/.rbenv/bin:~/Development/android-sdk-macosx/tools:~/Development/android-sdk-macosx/platform-tools:/usr/local/heroku/bin:$PATH"

# rbenv
eval "$(rbenv init -)"
