" for python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" for javascript
autocmd FileType javascript setl shiftwidth=4 tabstop=2 softtabstop=2

" for processing
au BufNewFile,BufRead *.pde setf processing

" for css
autocmd FileType css setl shiftwidth=2 tabstop=2 softtabstop=2

" for markdown
au BufRead,BufNewFile *.md set filetype=markdown
