vim.opt.number = true
vim.opt.title = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.background = dark

vim.opt.list = true

vim.opt.listchars = "tab:<->,multispace:-,trail:#"

vim.api.nvim_create_augroup("languageListchars", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    group = 'languageListchars',
    pattern = { 'lua' },
    callback = function() vim.opt_local.listchars = "tab:<->,multispace:`,trail:#" end
})

-- ColorScheme
vim.cmd 'colorscheme tokyonight'
-- vim.cmd 'hi NonText ctermbg=NONE ctermfg=59 guibg=NONE guifg=NONE'
-- vim.cmd 'hi SpecialKey ctermbg=NONE ctermfg=59 guibg=NONE-guifg=NONE'

-- Status Line
vim.opt.laststatus = 2
vim.opt.showmode = false

-- Command Line
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full"

