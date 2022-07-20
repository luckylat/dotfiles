" --typescript--
" avoid 'redrawtime' exceeded in .ts
set re=0
" -tsconfig.json-
" change the filetype to jsonc
augroup tsconfig
    autocmd!
    au BufNewFile,BufRead tsconfig.json setlocal filetype=jsonc 
augroup END
