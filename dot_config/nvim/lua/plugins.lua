return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Some Requirement
    use { 'nvim-tree/nvim-web-devicons' }

    -- Syntax
    use 'alker0/chezmoi.vim'
    use 'Fymyte/rasi.vim'
    use 'prisma/vim-prisma'

    -- Git
    use 'airblade/vim-gitgutter'

    -- Tree explorer
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    -- Terminal
    use 'akinsho/toggleterm.nvim'

    -- Status / Tab line
    use {
        'romgrk/barbar.nvim', 
        requires = 'nvim-web-devicons'
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'nvim-web-devicons'
    }

    -- LSP
    use 'prabirshrestha/vim-lsp'
    use 'mattn/vim-lsp-settings'

    -- Style Checker
    use 'lilydjwg/colorizer'

    -- Specific language
    -- - MarkDown
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- - TypeScript
    use 'leafgarland/typescript-vim'

    -- ColorScheme
    use 'folke/tokyonight.nvim'
end)
