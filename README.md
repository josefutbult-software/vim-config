# Install

Move vimrc to correct location

```shell
mv vim-config/vimrc ~/.vimrc
```

Move vim folder to correct location

```shell
mv vim-config/vim ~/.vim
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
