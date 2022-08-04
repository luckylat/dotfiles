set expandtab

set tabstop=4
set shiftwidth=4

" change the filetype
augroup filetype
    autocmd!
    au BufNewFile,BufRead tsconfig.json setlocal filetype=jsonc 
augroup END

augroup tab_language
    autocmd!
    
    autocmd FileType typescript setlocal sw=2 ts=2 re=0
    autocmd FileType typescriptreact setlocal sw=2 ts=2 re=0
    
    autocmd FileType make setlocal noexpandtab
augroup END
