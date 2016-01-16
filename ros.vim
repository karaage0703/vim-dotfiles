"ROSのトピックのリストを表示するコマンドを有効にする
source ~/dotfiles/scripts/RosTopicList.vim

"ROSのmsgの構成を表示するコマンドを有効にする
source ~/dotfiles/scripts/RosmsgShow.vim

"catkin_makeを実施するコマンドを有効化
source ~/dotfiles/scripts/RosCatkinMake.vim

" launchファイルのカラースキームをxmlと一緒にする。
au BufNewFile,BufRead *.launch set filetype=xml

" for lisp
au BufNewFile,BufRead *.l :set filetype=lisp
autocmd FileType lisp setl shiftwidth=4 tabstop=2 softtabstop=4

