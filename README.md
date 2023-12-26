# Install

Install NeoVim

**Ubuntu**
```bash
sudo apt install neovim python3-pip python3-neovim nodejs npm
```

**ARCH**
```bash
sudo pacman -S neovim python-pip
pip install --user neovim --break-system-packages
```

Make sure Node is the latest version
```bash
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
```

Restart your shell.

Add config for NeoVim to use Vim resources
```bash
mkdir -p ~/.config/nvim
vim ~/.config/nvim/init.vim
```

Add the following
```bash
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

Now, copy your Vim config files to your Linux home directory

Alias NeoVim to Vim on login. Add the following to `.bashrc`/`.zshrc`

```bash
# Remap Vim and Vi to NeoVim
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
```

## Setup

Symlink the vimrc file and vim folder to your home folder.

```shell
ln -s `pwd`/vimrc $HOME/.vimrc
ln -s `pwd`/vim $HOME/.vim
```

Add plugin manager

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Run installer in vim

```shell
:PlugInstall
```

Run installers for COC plugins

In Vim
```shell
CocInstall coc-rust-analyzer
```
