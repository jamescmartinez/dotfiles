# fish Config
set fish_greeting

# Aliases
alias assume="source (brew --prefix)/bin/assume.fish"
alias dns_cloudflare="networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001" # Use Cloudflare DNS servers
alias dns_default='networksetup -setdnsservers Wi-Fi Empty' # Remove custom DNS servers
alias dns_list='networksetup -getdnsservers Wi-Fi' # List custom DNS servers
alias dns_flush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder' # Flush DNS cache
alias g='git'
alias glci='golangci-lint'
alias kittyup='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin' # Update Kitty
alias source_fish_config='source ~/.config/fish/config.fish'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# mise
mise activate fish | source

# Editor Config
set -x VISUAL code --wait
set -x EDITOR code --wait

# OrbStack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
