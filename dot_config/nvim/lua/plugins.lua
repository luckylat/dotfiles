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

    use 'editorconfig/editorconfig-vim'

    -- LSP
    use 'neovim/nvim-lspconfig'

    -- Auto Compeltion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- vsnip
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'


    -- Templater
    use 'mattn/vim-sonictemplate'

    -- Style Checker
    use 'lilydjwg/colorizer'

    -- Specific language
    -- - MarkDown
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- - TypeScript
    use 'leafgarland/typescript-vim'

    -- - SATySFi
    use 'qnighy/satysfi.vim'

    -- - tridactyl
    use 'tridactyl/vim-tridactyl'

    -- - GLSL
    use 'tikhomirov/vim-glsl'

    -- ColorScheme
    use 'folke/tokyonight.nvim'
end)
