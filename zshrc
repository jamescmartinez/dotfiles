# Zsh Completions
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit; compinit

# Zsh Theme
autoload -U promptinit; promptinit
prompt pure

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
alias vi='vim'

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
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# GOPATH
export GOPATH=$HOME/development/go

# Editor Config
export VISUAL=vim
export EDITOR="$VISUAL"

# Zsh Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# PATH
export PATH=$GOPATH/bin:/usr/local/sbin:$PATH
