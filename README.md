# ~jamescmartinez

This repository includes my dotfiles.

- _Have a suggestion? Please [create an issue](https://github.com/jamescmartinez/dotfiles/issues/new)!_

## Dotfiles-only Setup

```bash
git clone git://github.com/jamescmartinez/dotfiles ~/dotfiles
~/dotfiles/bin/setup
```

## Full macOS Setup Guide

1. Enable network firewall
1. Set DNS servers to [Cloudflare DNS](https://1.1.1.1/dns)
   - `1.1.1.1`
   - `1.0.0.1`
   - `2606:4700:4700::1111`
   - `2606:4700:4700::1001`
1. Enable FileVault
1. Install Command Line Tools with `xcode-select --install`
1. [Configure GitHub SSH](https://gist.github.com/jamescmartinez/a1f32830e57cf2a3fa62)
1. Install dotfiles (instructions above)
1. Install [Homebrew](https://brew.sh) and run `brew bundle --file ~/Brewfile` to install programs from the dotfiles-installed `Brewfile`
   - Dump current Brewfile: `brew bundle dump --file Brewfile.dump`
   - Make system match Brewfile: `brew bundle --force cleanup`
1. Set fish as the default shell with:
   ```sh
   # Intel
   echo /usr/local/bin/fish | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/fish
   # Apple
   echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
   chsh -s /opt/homebrew/bin/fish
   ```
1. Install [Fisher](https://github.com/jorgebucaran/fisher) and run `fisher update` to install plugins from the dotfiles-installed `~/.config/fish/fish_plugins`
   - If `fisher update` does not install the plugins, it's probably because fisher replaced the symlink with a new `fish_plugins` file upon installation. Quick fix: run a `git reset` on `~/dotfiles` and run `fisher update` again.
1. Continue installing other apps

## Apps

#### Install from App Store

- Amphetamine
- Gifox
- Hand Mirror
- Hidden Bar
- Magnet
- Slack
- Todoist
- Xcode

#### Install from website

- 1Password
- Alfred
- AppCleaner
- Charles Proxy
- Deckset
- Docker
- Dropbox
- Figma
- Google Chrome
- Grammarly Desktop
- [KeyboardCleanTool](https://folivora.ai/keyboardcleantool)
- [kitty](https://github.com/kovidgoyal/kitty)
- [LinearMouse](https://linearmouse.org)
- Loom
- Notion
- Onyx
- Spotify
- TablePlus
- Visual Studio Code
- Zoom
