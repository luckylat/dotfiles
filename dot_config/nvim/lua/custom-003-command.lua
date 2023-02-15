if vim.fn.has('persistent_undo') == 1 then
    local target_path = vim.fn.expand("~/.config/nvim/undo")

    if vim.fn.isdirectory(target_path) == false then
        os.execute("mkdir -p " .. target_path)
    end

    vim.opt.undodir = target_path
    vim.opt.undofile = true
end
