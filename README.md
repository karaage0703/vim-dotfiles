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
$ git clone https://github.com/karaage0703/vim-dotfiles.git
$ mv ~/vim-dotfiles/.vimrc ~/.vimrc
~~~~

# Vim plugin
## If you don't need plugin
Edit `.vimrc` like below lines

~~~~
source ~/dotfiles/basic.vim " for basic setting
source ~/dotfiles/indent.vim " for indent setting
" source ~/dotfiles/bundle.vim " for plugin setting
~~~~

## If you don't need ROS plugin
If you want to use ROS(Robot Operating System). Below modify is recommended.

Comment out below line of `.vimrc` 
~~~~
source ~/dotfiles/ros.vim " for ROS setting
~~~~

Comment out below line of `.vimrc.bundle`

~~~~
NeoBundle 'taketwo/vim-ros'
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

If you don't need processing. Comment out below lines from `.vimrc.bundle`
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

## VimUnite
File launcher is launched by executing below command
~~~~
:Unite file
~~~~

If you want to move parent directory. input `i` and `../`.

## Markdown + Vim
Edit markdown on vim and execute below command
~~~~
:PrevimOpen
~~~~

If you save markdown file, preview is modified automatically. 


