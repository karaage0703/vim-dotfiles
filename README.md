# vim-dotfiles
This repository is my private `.vimrc`(But anyone can use this).

# Enviroment tested
- Ubuntu14.04
- Mac OS X Yosemite 10.10.4

Windows? I don't know

# Setup
## Vim Install

### Linux
vim and gvim
```sh
$ sudo apt-get update
$ sudo apt-get install vim
$ sudo apt-get install vim-gtk
```

### Mac
Install Mac Vim from following link
[macvim-kaoriya](https://github.com/splhack/macvim-kaoriya)

## Clone the dotfiles and move .vimrc

### Linux
Execute following commands
```sh
$ cd
$ git clone https://github.com/karaage0703/vim-dotfiles.git
$ ln -sf ~/vim-dotfiles/.vimrc ~/.vimrc
```

## Mac
Execute following commands
```sh
$ cd
$ git clone https://github.com/karaage0703/vim-dotfiles.git
$ ln -sf ~/vim-dotfiles/.vimrc ~/.vimrc
$ chmod 755 ~/vim-dotfiles/mvim
$ sudo cp ~/vim-dotfiles/mvim /usr/local/bin
```
mvim original file is following. thanks  
[mvim](http://repo.or.cz/w/MacVim/KaoriYa.git/blob_plain/HEAD:/src/MacVim/mvim)

# Update dotfiles
Execute following commands
```sh
$ cd ~/vim-dotfiles
$ git pull
```

# Caution
Before launch vim. Please read Vim plugin section of this README.

# Vim plugin
## If you don't need plugin
Comment out importing `bundle.vim` line of `.vimrc` like below.
```vim
" source ~/vim-dotfiles/bundle.vim " for plugin setting
source ~/vim-dotfiles/basic.vim " for basic setting
source ~/vim-dotfiles/indent.vim " for indent setting
source ~/vim-dotfiles/ros.vim " for ROS setting
```

## If you don't need ROS plugin
Comment out importing `ros.vim` line of `.vimrc` like below. 
```vim
source ~/vim-dotfiles/bundle.vim " for plugin setting
source ~/vim-dotfiles/basic.vim " for basic setting
source ~/vim-dotfiles/indent.vim " for indent setting
" source ~/vim-dotfiles/ros.vim " for ROS setting
```

Comment out below line of `.vimrc.bundle`

```vim
NeoBundle 'taketwo/vim-ros'
```

## Preparation(If you use plugin)

### Install Neobundle(Must)
Execute following commands
```sh
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

### For vim-autopep8
Execute following command
```sh
$ sudo pip install --upgrade autopep8
```

if you don't need vim-autopep8. Comment out below line from `.vimrc.bundle`
```sh
NeoBundle 'tell-k/vim-autopep8'
```

### For processing
- Install Processing 3.xx (from https://processing.org)
- Launch Processing
- Menu > Tools > install "processing-java"

If you don't need processing. Comment out below lines from `.vimrc.bundle`
```vim
NeoBundle 'sophacles/vim-processing'
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
let g:quickrun_config.processing =  {
      \     'command': 'processing-java',
      \     'exec': '%c --sketch=$PWD/ --output=/Library/Processing --run --force',
      \   }
```

### For color scheme(solarized)
#### Mac
```sh
$ git clone https://github.com/tomislav/osx-terminal.app-colors-solarized
```

import color shceme file from terminal on GUI

#### Linux
```sh
$ git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
$ cd gnome-terminal-colors-solarized
$ ./install.sh
```


## Install plugin

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

# Special Thanks
- https://github.com/kumattau/dotfiles
- https://github.com/Shougo/
- https://github.com/AtsushiSakai/myvim
