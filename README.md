# Install

Move vimrc to correct location

```shell
mv vim-config/vimrc ~/.vimrc
```

Add plugin manager

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Run installer in vim

```shell
:PlugInstall
```
