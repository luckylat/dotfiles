" --persistent undo--
if has('persistent_undo')
    let target_path = expand('~/.config/nvim/undo/')
    
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif

    let &undodir = target_path

    set undofile
endif

