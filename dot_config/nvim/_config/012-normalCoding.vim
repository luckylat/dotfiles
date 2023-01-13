set foldmethod=syntax
set foldlevel=100 "magic number

augroup folding
    autocmd!
    au BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
    au BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
augroup END
set viewoptions-=options


augroup fold_language
    autocmd!
    au FileType tex setlocal foldmethod=indent
augroup END

