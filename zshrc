# Zsh Completions
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit; compinit

# Enable 256 Colors
export TERM=xterm-256color

# Zsh Theme
autoload -U promptinit; promptinit
prompt pure

# Aliases
alias g=git
alias http='python -m http.server'
alias pg='postgres -D /usr/local/var/postgres'
alias rd='redis-server /usr/local/etc/redis.conf'
alias rdbm='rake db:migrate'
alias rmdd='rm -rf ~/Library/Developer/Xcode/DerivedData/'
alias rubo='rubocop -Ra'
alias v='$VISUAL'
alias vi='$VISUAL'

# Functions
deploy() {
  BRANCH=$(git symbolic-ref --short -q HEAD)
  git push $1 $BRANCH:master
}

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# asdf
source /usr/local/opt/asdf/asdf.sh

# Editor Config
export VISUAL=vim
export EDITOR="$VISUAL"

# Zsh Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
