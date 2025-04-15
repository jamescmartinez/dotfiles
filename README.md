# ~jamescmartinez

This repository includes my dotfiles.

- _Have a suggestion? Please [create an issue](https://github.com/jamescmartinez/dotfiles/issues/new)!_

## Dotfiles-only Setup

```bash
git clone git@github.com:jamescmartinez/dotfiles.git ~/dotfiles
~/dotfiles/bin/setup
```

## Full macOS Setup Guide

1. Enable network firewall
1. Enable FileVault
1. Install Command Line Tools with `xcode-select --install`
1. [Configure GitHub SSH](https://gist.github.com/jamescmartinez/a1f32830e57cf2a3fa62)
1. Install dotfiles (instructions above)
1. Install [Homebrew](https://brew.sh) and run `brew bundle --file ~/Brewfile` to install programs from `~/Brewfile`
   - Dump current Brewfile: `brew bundle dump --file Brewfile.dump`
   - Make system match Brewfile: `brew bundle --force cleanup`
1. Set fish as the default shell with:
   ```sh
   # Intel
   echo /usr/local/bin/fish | sudo tee -a /etc/shells
   chsh -s /usr/local/bin/fish
   # Apple M
   echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
   chsh -s /opt/homebrew/bin/fish
   ```
1. Restart so the default shell change takes effect
1. Install [Fisher](https://github.com/jorgebucaran/fisher) and run `fisher update` to install plugins from `~/.config/fish/fish_plugins`
   - If `fisher update` does not install the plugins, it's probably because fisher replaced the symlink with a new `fish_plugins` file upon installation. Quick fix: run a `git reset` on `~/dotfiles` and run `fisher update` again.
1. Use `dns_cloudflare` fish alias to set DNS servers to [Cloudflare DNS](https://1.1.1.1/dns); use `dns_default` to revert this as-needed (e.g. when unable to access captive portal)
   - `1.1.1.1`
   - `1.0.0.1`
   - `2606:4700:4700::1111`
   - `2606:4700:4700::1001`
1. Continue installing other apps

## Apps

#### Install from App Store

- Amphetamine
- Gifox
- Magnet
- Slack
- Todoist

#### Install from website

- 1Password
- Alfred
- AppCleaner
- Docker
- Dropbox
- Figma
- Google Chrome
- [KeyboardCleanTool](https://folivora.ai/keyboardcleantool)
- [kitty](https://github.com/kovidgoyal/kitty)
- Loom
- Notion
- Spotify
- Visual Studio Code
- Zoom
