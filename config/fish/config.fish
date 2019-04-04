# fish Config
set fish_greeting

# Aliases
alias g='git'
alias http='python -m http.server'
alias pg='postgres -D /usr/local/var/postgres'
alias rd='redis-server /usr/local/etc/redis.conf'
alias rdbm='rake db:migrate'
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias rubo='rubocop -Ra'
alias v='vim'
alias vi='vim'

# Functions
function deploy
  set branch (git symbolic-ref --short -q HEAD)
  git push $argv $branch:master
end

# asdf
source ~/.asdf/asdf.fish

# pyenv
pyenv init - | source

# Editor Config
set -x VISUAL vim
set -x EDITOR vim
