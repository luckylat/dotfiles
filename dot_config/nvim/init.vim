" ---global setting---

scriptencoding utf-8
set encoding=utf-8


if &compatible
    set nocompatible
endif

" --- dein Plugin Manager---
" -- dein install --
" https://qiita.com/kawaz/items/ee725f6214f91337b42b
let s:dein_dir = $HOME . '/.config/nvim/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &rtp = s:dein_repo_dir . ',' . &rtp

if dein#load_state(s:dein_dir)
    let g:dein#cache_director= $HOME . '/.cache/dein'

    call dein#begin(s:dein_dir)

    let s:toml_dir  = $HOME . '/.config/nvim/dein/toml'
    let s:toml      = s:toml_dir . '/dein.toml'
    let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

    call dein#load_toml(s:toml,      {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

    call dein#end()
    call dein#save_state()
endif

" call dein#begin(s:dein_dir)
" 
" call dein#add('Shougo/dein.vim')
" " -- plugins --
" " dein#add([Plugin Author]/[Pugin repo])
" 
" " -syntax-
" call dein#add('alker0/chezmoi.vim')
" call dein#add('Fymyte/rasi.vim')
" 
" " -show git diff-
" call dein#add('airblade/vim-gitgutter')
" 
" " -tree explorer-
" call dein#add('scrooloose/nerdtree')
" 
" " -status/tab line-
" call dein#add('itchyny/lightline.vim')
" 
" " -language server-
" call dein#add('prabirshrestha/vim-lsp')
" call dein#add('mattn/vim-lsp-settings')
" 
" " -style checker-
" call dein#add('lilydjwg/colorizer')
" 
" " specific language
" " MarkDown
" call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'], 'build': 'sh -c "cd app & yarn install"'})
" 
" " typescript
" call dein#add('leafgarland/typescript-vim')
" 
" " -- colorScheme --
" call dein#add('folke/tokyonight.nvim')
" "call dein#add('tomasr/molokai')
" "call dein#add('NLKNguyen/papercolor-theme')
" 
" " -- --
" call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif
" --- ---

call map(sort(split(globpath(&rtp, '_config/*.vim'))), {->[execute('exec "so" v:val')]})
