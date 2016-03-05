set number

syntax enable
let scheme = 'solarized'
augroup guicolorscheme
	autocmd!
	execute 'autocmd GUIEnter * colorscheme' scheme
augroup END
execute 'colorscheme' scheme

" for undo/backup/swap/book/hist
if has("persistent_undo")
	set undofile				" 可能なら undo 履歴を永続的に保存する
	set undodir=~/.vim_undo		" undoファイルを.vim_undoににまとめる
	if !isdirectory(&undodir)		" ディレクトリがなかったら作成する
		call mkdir(&undodir, "p")
	endif
endif
set backupdir=~/.vim_backup		" ~xxxを.vim_backupにまとめる
if !isdirectory(&backupdir)		" ディレクトリがなかったら作成する
	call mkdir(&backupdir, "p")
endif
set directory=~/.vim_swapfile		" .xxx.swpを.vim_swapfileにまとめる
if !isdirectory(&directory)		" ディレクトリがなかったら作成する
	call mkdir(&directory, "p")
endif
let g:netrw_home=expand('~/')		" .netrw{book,hist} を HOME に保存する

" emacs like key bind at insert mode
" inoremap <C-f> <Right>|			" C-f で左へ移動
" inoremap <C-b> <Left>|			" C-b で右へ移動
" inoremap <C-p> <Up>|			" C-p で上へ移動
" inoremap <C-n> <Down>|			" C-n で下へ移動
" inoremap <C-a> <Home>|			" C-a で行頭へ移動
" inoremap <C-e> <End>|			" C-e で行末へ移動
" inoremap <C-h> <BS>|			" C-h でバックスペース
" inoremap <C-d> <Del>|			" C-d でデリート
" inoremap <C-m> <CR>|			" C-m で改行

" for status line
" refer to http://blog.ruedap.com/entry/20110712/vim_statusline_git_branch_name
set statusline=%<     " 行が長すぎるときに切り詰める位置
" set statusline+=%n  " バッファ番号
set statusline+=%m    " %m 修正フラグ
set statusline+=%h    " %h ヘルプバッファフラグ
set statusline+=%w    " %w プレビューウィンドウフラグ
set statusline+=%y    " バッファ内のファイルのタイプ
set statusline+=%F    " バッファ内のファイルのフルパス
set statusline+=%r    " %r 読み込み専用フラグ
set statusline+=\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}  " fencとffを表示
set statusline+=\     " 空白スペース
set statusline+=%=    " 左寄せ項目と右寄せ項目の区切り
set statusline+=%1l   " 何行目にカーソルがあるか
set statusline+=/
set statusline+=%L    " バッファ内の総行数
set statusline+=,
set statusline+=%c    " 何列目にカーソルがあるか
set statusline+=\   " 空白スペース2個
set statusline+=\|%P\|" ファイル内の何％の位置にあるか
