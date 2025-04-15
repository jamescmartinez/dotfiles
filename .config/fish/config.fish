# fish Config
set fish_greeting

# Aliases
alias dns_cloudflare="networksetup -setdnsservers Wi-Fi 1.1.1.1 1.0.0.1 2606:4700:4700::1111 2606:4700:4700::1001" # Use Cloudflare DNS servers
alias dns_default='networksetup -setdnsservers Wi-Fi Empty' # Remove custom DNS servers
alias dns_list='networksetup -getdnsservers Wi-Fi' # List custom DNS servers
alias g='git'

# Kitty Update
alias kittyup='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

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

# List all git repositories in the current directory ordered by their most
# recent commit.
function list_git_repos
    for dir in */
        if test -d "$dir/.git"
            set commit_date (git -C "$dir" log -1 --format="%at" 2>/dev/null)
            if test -n "$commit_date"
                echo (date -r $commit_date '+%Y-%m-%d %H:%M:%S')" $dir"
            end
        end
    end | sort -r | head -n 10
end
