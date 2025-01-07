## My personal dotfiles

### Installation
First you will have to install NeoVim, OhMyPosh and TMUX. (I am assuming that you have ZSH already, because you're on Mac).
Make sure that you add the following lines to your `~/.zprofile` (and create one if it does not exist):
```bash
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
```
After this, you will need to install [TPM](https://github.com/tmux-plugins/tpm) (Tmux Plugin Manager). You can do so by running the following command:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
And finally, you can clone this repository and use GNU Stow to install the dotfiles:
```bash
cd && git clone https://github.com/tahahundekari/.dotfiles.git
cd ~/.dotfiles
stow i3 kitty nvim ohmyposh picom polybar tmux zsh
```
You can naturally also just use the dotfiles for the applications you want to configure. E.g. if you only want to use the NeoVim configuration, you can run:
```bash
stow nvim
```
#### ZSH
Dependencies:
- You will need to install [zoxide](https://github.com/ajeetdsouza/zoxide).

Furthermore, I have a cli tool for Angular projects. In case you do not need this, comment out the following line in `.zshrc`:
```bash
source <(ng completion script)
```
