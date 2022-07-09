" ---Vundle Plugin manager---
if glob("~/.vim/bundle/Vundle.vim") != ""
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
    
    " -status/tab line-
    Plugin 'itchyny/lightline.vim'
    
    " -specific language-
    " MarkDown
    Plugin 'iamcco/markdown-preview.nvim'
    
    call vundle#end()
    filetype plugin indent on
endif

" ---plugin settings---
let NERDTreeShowHidden=1

" ---mapping---
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" --for Competitive Programming --
if $USER=='vagrant'
    nnoremap <silent><F2> :r! cat ~/workspace/Competitive_Programming/__Template/cpp/template/template.cpp<CR>
endif

" ---clipboard---
if $USER=='vagrant'
    set clipboard=unnamedplus,autoselect
endif

" ---coding---

set encoding=utf-8

set expandtab

set tabstop=4
set shiftwidth=4
augroup tab_language
    autocmd!
    autocmd FileType typescript setlocal sw=2 ts=2
augroup END

" ---UI---

set number

set title

set ruler

set background=dark

" --statusline /w lightline--
set laststatus=2

set noshowmode

let g:lightline = {
            \ 'colorscheme': 'wombat'
            \ }

" ---Graphic---

syntax on

" avoid 'redrawtime' exceeded in .ts
set re=0
