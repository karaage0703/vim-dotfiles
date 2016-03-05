# vim-dotfiles
This repository is my private `.vimrc`(But anyone can use this).

# Enviroment tested
- Ubuntu14.04
- Mac OS X Yosemite 10.10.4

Windows? I don't know

# Setup
## Install

### Linux
vim and gvim
```
$ sudo apt-get update
$ sudo apt-get install vim
$ sudo apt-get install vim-gnome
```

### Mac
Install Mac Vim from following link
[macvim-kaoriya](https://github.com/splhack/macvim-kaoriya)

## Clone the dotfiles and move .vimrc

### Linux
```
$ git clone https://github.com/karaage0703/vim-dotfiles.git
$ cp ~/vim-dotfiles/.vimrc ~/.vimrc
```

## Mac

```
$ git clone https://github.com/karaage0703/vim-dotfiles.git
$ mv ~/vim-dotfiles/.vimrc ~/.vimrc
$ chmod 755 ~/vim-dotfiles/mvim
$ sudo cp ~/vim-dotfiles/mvim /usr/bin
```

mvim original file is following. thanks  
[mvim](http://repo.or.cz/w/MacVim/KaoriYa.git/blob_plain/HEAD:/src/MacVim/mvim)

# Update dotfiles
```
$ cd ~/vim-dotfiles
$ git pull
```

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


# Plugin Memo

## VimShell
```
:VimShell
```

|item| description|
|---|---|
|`ctrl+l`|history|

## VimUnite
File launcher is launched by executing below command
```
:Unite file
```

If you want to move parent directory. input `i` and `../`.

## Markdown + Vim
Edit markdown on vim and execute below command
```
:PrevimOpen
```

If you save markdown file, preview is modified automatically. 
