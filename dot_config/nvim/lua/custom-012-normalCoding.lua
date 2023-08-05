vim.opt.foldmethod = 'syntax'
vim.opt.foldlevel = 100

vim.api.nvim_create_autocmd({'BufEnter', 'BufAdd', 'BufNew', 'BufNewFile', 'BufWinEnter'}, {
    group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
    callback = function()
        vim.opt.foldmethod = 'expr'
        vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end
})

vim.api.nvim_create_augroup('folding', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
    group = 'folding',
    callback = function() if vim.api.nvim_buf_get_name(0) ~= '' then vim.cmd([[ mkview ]]) end end
})
vim.api.nvim_create_autocmd('BufRead', {
    group = 'folding',
    callback = function() if vim.api.nvim_buf_get_name(0) ~= '' then vim.cmd([[ silent! loadview ]]) end end
})

vim.api.nvim_create_augroup('languageFold', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    group = 'languageFold',
    pattern = { 'tex', 'lua' },
    callback = function() vim.opt_local.foldmethod = 'indent' end
})


