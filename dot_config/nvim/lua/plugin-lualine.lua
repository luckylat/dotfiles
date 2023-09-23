
local function getFoldmethod()
    return vim.opt.foldmethod:get()
end

require('lualine').setup {
    options = { theme = 'codedark' },
    sections = {
        lualine_c = {{'filename', path=1}},
        lualine_y = {getFoldmethod}
    }
}
