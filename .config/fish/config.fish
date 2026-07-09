# fish Config
set fish_greeting

# Aliases
alias assume='source (brew --prefix)/bin/assume.fish'
alias cddev='cd ~/Development'
alias dns_cloudflare='networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001' # Use Cloudflare DNS servers
alias dns_default='networksetup -setdnsservers Wi-Fi Empty' # Remove custom DNS servers
alias dns_flush='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder' # Flush DNS cache
alias dns_list='networksetup -getdnsservers Wi-Fi' # List custom DNS servers
alias dockerprune='docker system prune -a --volumes'
alias g='git'
alias glci='golangci-lint'
alias kittyup='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin' # Update Kitty
alias source_fish_config='source ~/.config/fish/config.fish'

# Homebrew
test -x /opt/homebrew/bin/brew; and eval (/opt/homebrew/bin/brew shellenv) # Apple M
test -x /usr/local/bin/brew; and eval (/usr/local/bin/brew shellenv) # Intel
test -x /home/linuxbrew/.linuxbrew/bin/brew; and eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv) # Linux

# mise
mise activate fish | source

# Editor Config
set -x VISUAL 'code --wait'
set -x EDITOR 'code --wait'

# Add ~/.local/bin to $PATH
fish_add_path -p $HOME/.local/bin
