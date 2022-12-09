# fish Config
set fish_greeting

# Aliases
alias g='git'

# asdf
source (brew --prefix asdf)'/asdf.fish'

# gcloud
source (brew --prefix)'/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc'

# Editor Config
set -x VISUAL code --wait
set -x EDITOR code --wait
