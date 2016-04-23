" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
 
NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
NeoBundle 'Shougo/vimshell'				" vimshell
NeoBundle 'Shougo/unite.vim'				" unite file
NeoBundle 'davidhalter/jedi-vim'			" for python
NeoBundle 'tell-k/vim-autopep8'				" for python
NeoBundle 'tyru/caw.vim.git'				" comment out plugin
nmap <Leader>c <Plug>(caw:hatpos:toggle)		" toggle comment out
vmap <Leader>c <Plug>(caw:hatpos:toggle)
NeoBundle 'sophacles/vim-processing'			" for processing
NeoBundle 'thinca/vim-quickrun'				" for processing
let g:quickrun_config = {}
let g:quickrun_config.processing =  {
      \     'command': 'processing-java',
      \     'exec': '%c --sketch=$PWD/ --output=/Library/Processing --run --force',
      \   }
NeoBundle 'hail2u/vim-css3-syntax'			" for css
NeoBundle 'mattn/emmet-vim'				" for html css
NeoBundle 'lilydjwg/colorizer'				" for css color preview
NeoBundle 'tpope/vim-fugitive'				" for git
" NeoBundle 'itchyny/lightline.vim'
NeoBundle 'taketwo/vim-ros'				" for ros
NeoBundle 'plasticboy/vim-markdown'			" for markdown
let g:vim_markdown_folding_disabled = 1
NeoBundle 'kannokanno/previm'				" for markdown(preview)
NeoBundle 'tyru/open-browser.vim'			" for markdown(preview)
NeoBundle 'dhruvasagar/vim-table-mode'			" for markdown(table)
let g:table_mode_corner="|"				" for markdown option
NeoBundle 'altercation/vim-colors-solarized'		" for color scheme solarized light
let g:solarized_termcolors=16
let g:solarized_termtrans=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_contrast='normal'
let g:solarized_visibility='normal'


call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
