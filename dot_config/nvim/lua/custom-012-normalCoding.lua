vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldenable = false
vim.opt.foldlevel = 100

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
