# fish Config
set fish_greeting

# Aliases
alias erbl='erblint --lint-all --autocorrect'
alias flushdns='sudo killall -HUP mDNSResponder'
alias g='git'
alias http='python -m http.server'
alias rdbm='rake db:migrate'
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias rubo='rubocop -A'
alias v='vim'
alias vi='vim'

# Functions
function deploy
  set branch (git symbolic-ref --short -q HEAD)
  git push $argv $branch:master
end

# asdf
source (brew --prefix asdf)'/asdf.fish'

# Editor Config
set -x VISUAL vim
set -x EDITOR vim
