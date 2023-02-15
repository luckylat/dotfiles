return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Syntax
    use 'alker0/chezmoi.vim'
    use 'Fymyte/rasi.vim'

    -- Git
    use 'airblade/vim-gitgutter'

    -- Tree explorer
    use { 'nvim-lua/plenary.nvim' }
    use { 'nvim-telescope/telescope.nvim' }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    -- Terminal
    use 'akinsho/toggleterm.nvim'

    -- Status / Tab line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- LSP
    use 'prabirshrestha/vim-lsp'
    use 'mattn/vim-lsp-settings'

    -- Style Checker
    use 'lilydjwg/colorizer'

    -- Specific language
    -- - MarkDown
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    -- - TypeScript
    use 'leafgarland/typescript-vim'

    -- ColorScheme
    use 'folke/tokyonight.nvim'
end)
