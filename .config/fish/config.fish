# fish Config
set fish_greeting

# Aliases
alias flushdns='sudo killall -HUP mDNSResponder'
alias g='git'
alias http='python -m http.server'
alias pg='postgres -D /usr/local/var/postgres'
alias rd='redis-server /usr/local/etc/redis.conf'
alias rdbm='rake db:migrate'
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias rubo='rubocop -a'
alias v='vim'
alias vi='vim'

# Functions
function deploy
  set branch (git symbolic-ref --short -q HEAD)
  git push $argv $branch:master
end

# asdf
source /usr/local/opt/asdf/asdf.fish

# Google Cloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# Editor Config
set -x VISUAL vim
set -x EDITOR vim
