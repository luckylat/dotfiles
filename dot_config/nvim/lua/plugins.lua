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

    {
      'stevearc/oil.nvim',
      ---@module 'oil'
      ---@type oil.SetupOpts
      opts = {},
      -- Optional dependencies
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
      -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
      lazy = false,
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

    -- -- AI / AI Agents
    {
        'github/copilot.vim',


    },
    {
      "coder/claudecode.nvim",
      dependencies = { "folke/snacks.nvim" },
      config = true,
      keys = {
        { "<leader>a", nil, desc = "AI/Claude Code" },
        { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
        { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
        { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
        { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
        { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
        { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
        { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
        {
          "<leader>as",
          "<cmd>ClaudeCodeTreeAdd<cr>",
          desc = "Add file",
          ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
        },
        -- Diff management
        { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
        { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
      },
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

    -- -- - CSV
    {
        'chrisbra/csv.vim',
        ft = { "csv" },
    },

    -- -- ColorScheme
    'folke/tokyonight.nvim',

}

require('lazy').setup(plugins)

