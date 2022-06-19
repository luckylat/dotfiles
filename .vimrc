" ---Vundle Plugin manager---
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" --Plugin--
" `Plugin '[Plugin Author]/[Plugin repo]'`

" -shows git diff-
Plugin 'airblade/vim-gitgutter'

" -tree explorer-
Plugin 'scrooloose/nerdtree'



call vundle#end()
filetype plugin indent on



" mapping
nnoremap <silent><C-e> :NERDTreeToggle<CR>


" avoid 'redrawtime' exceeded in .ts
set re=0



" ---coding---

set encoding=utf-8

set tabstop=2

" ---UI---

set number

set title

set ruler


" ---Graphic---

syntax on


