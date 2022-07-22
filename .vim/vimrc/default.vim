" ---global setting---

set encoding=utf-8

" --- dein Plugin Manager---
if &compatible
    set nocompatible
endif

set rtp+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.cache/dein'))

call dein#add(expand('~/.cache/dein/repos/github.com/Shougo/dein.vim'))
" -- plugins --
" dein#add([Plugin Author]/[Pugin repo])

" -show git diff-
call dein#add('airblade/vim-gitgutter')

" -tree explorer-
call dein#add('scrooloose/nerdtree')

" -status/tab line-
call dein#add('itchyny/lightline.vim')

" -language server-
call dein#add('prabirshrestha/vim-lsp')
call dein#add('mattn/vim-lsp-settings')

" specific language
" MarkDown
call dein#add('iamcco/markdown-preview.nvim')


" -- colorScheme --
call dein#add('tomasr/molokai')


" -- --
call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif
" --- ---

call map(sort(split(globpath(&rtp, '_config/*.vim'))), {->[execute('exec "so" v:val')]})
