## My personal dotfiles

This repository contains my personal dotfiles. I use them to configure my system to my liking. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my dotfiles.
To find dotfiles for a specific OS, check the branches. E.g. the `mac` branch contains dotfiles for macOS.

Before you proceed with installation, you will need to install a Nerd Font. I use [JetBrains Mono Nerd Font](https://formulae.brew.sh/cask/font-jetbrains-mono-nerd-font)

### Installation
First you will have to install NeoVim, OhMyPosh and TMUX. (I am assuming that you have ZSH already, because you're on Mac).
Make sure that you add the following lines to your `~/.zprofile` (and create one if it does not exist):
```bash
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```

You can do so by running the following commands (for the most current instructions, check the respective repositories):
```bash
brew install neovim tmux jandedobbeleer/oh-my-posh/oh-my-posh
```

After this, you will need to install [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager). You can do so by running the following command:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

And finally, you can clone this repository and use GNU Stow to install the dotfiles:
```bash
cd && git clone git@github.com:tahahundekari/.dotfiles.git
cd ~/.dotfiles
stow nvim zsh ohmyposh tmux
```
You can naturally also just use the dotfiles for the applications you want to configure. E.g. if you only want to use the NeoVim configuration, you can run:
```bash
stow nvim
```

#### <u>Neovim and ZSH</u>
NeoVim and/or ZSH might give you the following error `Cannot create directory /Users/<yourusername>/.local/share: permission denied` or something similar.
To fix this, create the directory manually and give it the correct permissions.
```bash
sudo chown -R <yourusername>:staff ~/.local
```
Where you replace `<yourusername>` with your actual username.
Note `staff` is the default group on Mac OS.

A better explanation can be found [here](https://stackoverflow.com/questions/78536128/neovim-permission-issue-local-after-installing-on-mac).

#### ZSH
Dependencies:
- You will need to install [zoxide](https://github.com/ajeetdsouza/zoxide).

Furthermore, I have a cli tool for Angular projects. In case you do not need this, comment out the following line in `.zshrc`:
```bash
source <(ng completion script)
```

### Usage
#### TMUX
- `Ctrl + s` is the prefix/leader key.
