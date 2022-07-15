" ---global setting---

set encoding=utf-8



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

call map(sort(split(globpath(&rtp, '_config/*.vim'))), {->[execute('exec "so" v:val')]})
