" ---UI---

set number

set title

set ruler

set cursorline

set background=dark

set list
set listchars=tab:<->,multispace:-,trail:#
augroup listchars_language
    autocmd!
    au FileType lua setlocal listchars=tab:<->,multispace:`,trail:#
augroup END

hi NonText ctermbg=NONE ctermfg=59 guibg=NONE guifg=NONE
hi SpecialKey ctermbg=NONE ctermfg=59-guibg=NONE-guifg=NONE

" --cursor--
if has('vim_starting')
    " in insert mode
    let &t_SI .= "\e[6 q"
    " in normal mode
    let &t_EI .= "\e[2 q"
    " in replace mode
    let &t_SR .= "\e[4 q"
endif

" --statusLine--
set laststatus=2
set noshowmode

" --commandLine--
set wildmenu
set wildmode=longest:full

" ---Graphic---

syntax on

" ---colorScheme---
colorscheme tokyonight
"colorscheme PaperColor
