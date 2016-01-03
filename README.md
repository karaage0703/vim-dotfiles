# vim-dotfiles
This repository is my private dotfiles(But anyone can use this).

# Setup
## Install vim and gvim
~~~~
$ sudo apt-get update
$ sudo apt-get install vim
$ sudo apt-get install vim-gnome
~~~~

## Clone the dotfiles

~~~~
$ git clone https://github.com/karaage0703/vim-dotfiles.git ~/dotfiles
$ mv ~/dotfiles/.vimrc ~/.vimrc
~~~~

# Vim plugin
## If you don't need plugin
Edit `.vimrc` as below

~~~~
source ~/dotfiles/.vimrc.basic " for basic setting
source ~/dotfiles/.vimrc.indent " for indent setting
" source ~/dotfiles/.vimrc.bundle " for plugin setting
~~~~

## Preparation(If you use plugin)
~~~~
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
~~~~


### For vim-autopep8
~~~~
$ sudo pip install --upgrade autopep8
~~~~

### For processing
Install Processing
Menu > Tools > install "processing-java"

### Install plugin

Launch Vim and execute `:NeoBundleInstall`


