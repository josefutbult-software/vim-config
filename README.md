# Install

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
