vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.api.nvim_create_augroup('specialFileType', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    group = 'specialFileType',
    pattern = { 'tsconfig.json' },
    callback = function() vim.opt_local.filetype = 'jsonc' end
})

-- TODO: make syntax for mdx
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    group = 'specialFileType',
    pattern = { '*.mdx' },
    callback = function() vim.opt_local.filetype = 'markdown' end
})

vim.api.nvim_create_augroup('languageTab', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    group = 'languageTab',
    pattern = { 'cpp', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'rasi', 'dockerfile', 'json' },
    callback = function()
        vim.opt_local.sw = 2
        vim.opt_local.ts = 2
    end
})
vim.api.nvim_create_autocmd('FileType', {
    group = 'languageTab',
    pattern = { 'typescript', 'typescriptreact' },
    callback = function()
        vim.opt_local.re = 0
    end
})
vim.api.nvim_create_autocmd('FileType', {
    group = 'languageTab',
    pattern = { 'make' },
    callback = function()
        vim.opt_local.expandtab = false
    end
})


