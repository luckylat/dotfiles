require('lualine').setup {
    options = { theme = 'codedark' },
    sections = {
        lualine_c = {{'filename', path=1}}
    }
}
