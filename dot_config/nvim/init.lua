if vim.loader then vim.loader.enable() end

require('plugins')
-- Plugin setup
require('plugin-lualine')
require('plugin-telescope')
require('plugin-toggleterm')
require('plugin-barbar')
require('plugin-nvim-cmp')
require('plugin-lspconfig')

-- Custom setting
require('custom-000-ui')
require('custom-001-keymap')
require('custom-002-codingStyle')
require('custom-003-command')
require('custom-012-normalCoding')
require('custom-050-extraSetting')

