# fish Config
set fish_greeting

# Aliases
alias g='git'

# Kitty Update
alias kittyup='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'

# Homebrew
fish_add_path (brew --prefix)/sbin

# asdf
# https://github.com/asdf-vm/asdf/issues/1346
# source (brew --prefix asdf)'/libexec/asdf.fish'
fish_add_path (brew --prefix asdf)/bin
fish_add_path $HOME/.asdf/shims

# gcloud
source (brew --prefix)'/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'

# Editor Config
set -x VISUAL code --wait
set -x EDITOR code --wait
