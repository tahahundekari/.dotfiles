## My personal dotfiles

This repository contains my personal dotfiles. I use them to configure my system to my liking. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.
To find dotfiles for a specific OS, check the branches. E.g. the `mac` branch contains dotfiles for macOS.

### Installation
```bash
cd && git clone git@github.com:tahahundekari/.dotfiles.git
cd ~/.dotfiles
stow nvim zsh ohmyposh tmux
```

#### Neovim and ZSH
NeoVim and/or ZSH might give you the following error `Cannot create directory /Users/<yourusername>/.local/share: permission denied` or something similar.
To fix this, create the directory manually and give it the correct permissions.
```bash
sudo chown -R <yourusername>:staff ~/.local
```
Where you replace `<yourusername>` with your actual username.
Note `staff` is the default group on Mac OS.

A better explanation can be found [here](https://stackoverflow.com/questions/78536128/neovim-permission-issue-local-after-installing-on-mac).

