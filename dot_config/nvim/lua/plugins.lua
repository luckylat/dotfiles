local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


plugins = {
    -- -- Syntax
    'alker0/chezmoi.vim',
    'Fymyte/rasi.vim',
    'prisma/vim-prisma',

    -- -- Git
    'airblade/vim-gitgutter',

    -- -- Tree explorer
    {
        'nvim-telescope/telescope-file-browser.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim',
        },
    },

    -- -- Terminal

    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },

    -- -- Status / Tab line 
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- -- Linter
    'editorconfig/editorconfig-vim',

    -- -- LSP
    'neovim/nvim-lspconfig',

    -- -- Auto Completion
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- -- vsnip
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',

    -- -- Templater
    'mattn/vim-sonictemplate',

    -- -- Style Checker
    'lilydjwg/colorizer',

    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
    },

    -- -- Utility
    'dstein64/vim-startuptime',

    -- Specific language

    -- -- MarkDown
    {
        'iamcco/markdown-preview.nvim',
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
    },

    -- -- SATySFi
    'qnighy/satysfi.vim',

    -- -- tridactyl
    'tridactyl/vim-tridactyl',

    -- -- - GLSL
    'tikhomirov/vim-glsl',

    -- -- ColorScheme
    'folke/tokyonight.nvim',
}

require('lazy').setup(plugins)

