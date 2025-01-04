## My personal dotfiles

This repository contains my personal dotfiles. I use them to configure my system to my liking. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.
To find dotfiles for a specific OS, check the branches. E.g. the `mac` branch contains dotfiles for macOS.

### Installation
```bash
cd && git clone git@github.com:tahahundekari/.dotfiles.git
cd ~/.dotfiles
stow nvim zsh ohmyposh tmux
```

