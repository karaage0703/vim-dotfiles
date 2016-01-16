# vim-dotfiles
This repository is my private `.vimrc`(But anyone can use this).

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

### Install Neobundle(Must)
~~~~
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
~~~~

### For vim-autopep8
~~~~
$ sudo pip install --upgrade autopep8
~~~~

if you don't need vim-autopep8. Comment out below line from `.vimrc.bundle`
~~~~
NeoBundle 'tell-k/vim-autopep8'
~~~~

### For processing
- Install Processing 3.xx (from https://processing.org)
- Launch Processing
- Menu > Tools > install "processing-java"

if you don't need processing. Comment out below lines from `.vimrc.bundle`
~~~~
NeoBundle 'sophacles/vim-processing'
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
let g:quickrun_config.processing =  {
      \     'command': 'processing-java',
      \     'exec': '%c --sketch=$PWD/ --output=/Library/Processing --run --force',
      \   }
~~~~


### Install plugin

Launch Vim and execute `:NeoBundleInstall` at normal mode.


# About Plugin

## VimShell


## VimUnite


