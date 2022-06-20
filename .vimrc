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

	call vundle#end()
	filetype plugin indent on
endif



" ---mapping---
nnoremap <silent><C-e> :NERDTreeToggle<CR>


" ---clipboard---
if $USER=='vagrant'
	set clipboard=unnamedplus,autoselect
endif

" ---coding---

set encoding=utf-8

set expandtab

set tabstop=4
set shiftwidth=4

" ---UI---

set number

set title

set ruler


" ---Graphic---

syntax on

" avoid 'redrawtime' exceeded in .ts
set re=0
