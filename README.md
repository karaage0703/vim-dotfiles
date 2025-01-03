# vim-dotfiles
This repository is my private `.vimrc`(But anyone can use this).

# Enviroment
- macOS
- Ubuntu
- Raspberry Pi 2/3/4 + Raspberry OS

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
Install Mac Vim from following link:  
[macvim-kaoriya](https://github.com/splhack/macvim-kaoriya)  

or Install via Homebrew by executing following command:

```sh
$ brew cask install macvim
```

## Setup
### Clone the dotfiles and setting（Must)
Execute following commands

```sh
$ cd && git clone https://github.com/karaage0703/vim-dotfiles.git
$ ln -sf ~/vim-dotfiles/.vimrc ~/.vimrc
```

### Install Neobundle(Optional)
Execute following commands

```sh
$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
```

### Mac only setting
Execute following commands

```sh
$ cd ~/vim-dotfiles
$ chmod 755 ~/vim-dotfiles/mvim
$ sudo ln -sf ~/vim-dotfiles/mvim /usr/local/bin/gvim
```

mvim original file is following. thanks  
[mvim](http://repo.or.cz/w/MacVim/KaoriYa.git/blob_plain/HEAD:/src/MacVim/mvim)

# Vim run (Linux/Mac)
vim on console

```sh
$ vim
```

vim on GUI
```sh
$ gvim
```

# Update dotfiles
Execute following commands
```sh
$ cd ~/vim-dotfiles
$ git pull
```

# Caution
Before launch vim. Please read Vim plugin section of this README.

# Vim plugin
## If you need plugin
Delete comment out importing `bundle.vim` line of `.vimrc` like below.

```vim
source ~/vim-dotfiles/bundle.vim " for plugin setting
source ~/vim-dotfiles/basic.vim " for basic setting
source ~/vim-dotfiles/indent.vim " for indent setting
```

## Preparation(If you use plugin)

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

### For neocomplete, neosnippet, neosnippet-snippets
#### Mac
```sh
$ brew install lua
$ brew reinstall vim --with-lua
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
- http://inari.hatenablog.com/entry/2014/05/05/231307
- http://qiita.com/ahiruman5/items/4f3c845500c172a02935
- http://qiita.com/zakkied/items/c46364c00e9fce7b55c7

# License
This software is released under the MIT License, see LICENSE.
