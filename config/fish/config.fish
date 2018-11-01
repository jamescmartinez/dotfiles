# fish Config
set fish_greeting

# Aliases
alias g='git'
alias http='python -m http.server'
alias npm='echo "Use `yarn` instead of `npm`."'
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
set -x ASDF_DATA_DIR (brew --prefix)/opt/asdf
source $ASDF_DATA_DIR/asdf.fish

# Editor Config
set -x VISUAL vim
set -x EDITOR vim

# PATH
set -x PATH (yarn global bin) $PATH
