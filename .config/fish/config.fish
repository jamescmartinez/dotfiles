# fish Config
set fish_greeting

# Aliases
alias g='git'

# Kitty Update
alias kittyup='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'

# asdf
source (brew --prefix asdf)'/libexec/asdf.fish'

# gcloud
source (brew --prefix)'/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'

# Editor Config
set -x VISUAL code --wait
set -x EDITOR code --wait
