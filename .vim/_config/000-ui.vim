" ---UI---

set number

set title

set ruler

set background=dark

" --cursor--
if has('vim_starting')
    " in insert mode
    let &t_SI .= "\e[6 q"
    " in normal mode
    let &t_EI .= "\e[2 q"
    " in replace mode
    let &t_SR .= "\e[4 q"
endif

" --statusline /w lightline--
set laststatus=2

set noshowmode

" ---Graphic---

syntax on

