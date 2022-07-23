" ---global setting---

scriptencoding utf-8
set encoding=utf-8


if &compatible
    set nocompatible
endif

" --- dein Plugin Manager---

" -- dein install --
" https://qiita.com/kawaz/items/ee725f6214f91337b42b
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.config') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &rtp = s:dein_repo_dir . ',' . &rtp


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
