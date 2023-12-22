# Install

Install neo-vim

**Ubuntu**
```bash
sudo apt install neovim
```

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
