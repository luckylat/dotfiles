set foldmethod=syntax
set foldlevel=100 "magic number

augroup folding
    autocmd!
    au BufWinLeave * mkview
    au BufWinEnter * silent loadview
augroup END

