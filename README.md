# ~jamescmartinez

This repository includes my dotfiles and macOS Setup Guide.

## Dotfiles-only Setup

```bash
git clone git@github.com:jamescmartinez/dotfiles.git ~/dotfiles
~/dotfiles/bin/setup
```

## Full macOS Setup Guide

1. Enable network firewall
1. Enable FileVault
1. Set up Finder
   - Delete all .DS_Store files, printing success and redirecting stderr to /dev/null
     ```sh
     find / -name ".DS_Store" -type f -print -delete 2>/dev/null
     killall Finder
     ```
   - Open Finder, go to top level dir (e.g., "James's MacBook Pro"), and set the following defaults:
     - Always open in list view
     - Browse in list view
     - Group by "Name"
     - Sort by "Name"
     - Use as Defaults
   - Repeat the last step for every directory in the Finder sidebar where this setting did not apply (usually Desktop, iCloud Drive, Trash, and a few others)
1. Install Command Line Tools with `xcode-select --install`
1. [Configure GitHub SSH](https://gist.github.com/jamescmartinez/a1f32830e57cf2a3fa62)
1. Install dotfiles (instructions above)
1. Install [Homebrew](https://brew.sh) and run `brew bundle --file ~/Brewfile` to install programs from `~/Brewfile`
   - Dump current Brewfile: `brew bundle dump -f --no-vscode --file ~/Brewfile`
   - Uninstall all dependencies not in the Brewfile: `brew bundle cleanup -f --file ~/Brewfile`
1. Set fish as the default shell with:
   ```sh
   # Apple M
   echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
   chsh -s /opt/homebrew/bin/fish
   # Intel
   echo /usr/local/bin/fish | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/fish
   ```
1. Restart so the default shell change takes effect
1. Install [Fisher](https://github.com/jorgebucaran/fisher) and run `fisher update` to install plugins from `~/.config/fish/fish_plugins`
   - If `fisher update` does not install the plugins, it's probably because fisher replaced the symlink with a new `fish_plugins` file upon installation. Quick fix: run a `git reset` on `~/dotfiles` and run `fisher update` again.
1. Use `dns_cloudflare` fish alias to set DNS servers to [Cloudflare DNS](https://1.1.1.1/dns). Use `dns_default` to revert this as-needed (e.g. when unable to access captive portal), and `dns_list` to list the current DNS servers.
   - `1.1.1.1`
   - `1.0.0.1`
   - `2606:4700:4700::1111`
   - `2606:4700:4700::1001`
1. Continue installing other apps

## Apps

> Note: Mac App Store apps are now installed and managed by the Brewfile.

#### Install from website

- [1Password](https://1password.com)
- ~[Alfred](https://www.alfredapp.com)~ - deprecated in favor of Raycast
- [AppCleaner](https://freemacsoft.net/appcleaner)
- [ChatGPT](https://chatgpt.com/download)
- [CleanShot X](https://cleanshot.com)
- [Deckset](https://www.deckset.com)
- ~[Docker](https://docs.docker.com/desktop/setup/install/mac-install)~ - deprecated in favor of `colima`
- [Figma](https://www.figma.com/downloads)
- [ghostty](https://ghostty.org)
- [Google Chrome](https://www.google.com/chrome)
- [KeyboardCleanTool](https://folivora.ai/keyboardcleantool)
- ~[kitty](https://github.com/kovidgoyal/kitty)~ - deprecated in favor of ghostty
- ~[LinearMouse](https://linearmouse.app)~ - deprecated, no longer needed as of macOS 26
- [Loom](https://www.loom.com/download)
- [Notion](https://www.notion.com/desktop)
- [Raycast](https://www.raycast.com)
- [Scroll Reverser](https://pilotmoon.com/scrollreverser) - still needed as of macOS 26
- [Spotify](https://www.spotify.com/us/download/mac)
- [Stats](https://mac-stats.com)
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Zoom](https://zoom.us/download)
