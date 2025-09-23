if vim.loader then vim.loader.enable() end

require('plugins')
-- Plugin setup
require('plugin-barbar')
require('plugin-copilot')
require('plugin-lualine')
require('plugin-telescope')
require('plugin-toggleterm')
require('plugin-nvim-cmp')
require('plugin-lspconfig')
require('plugin-oil')

-- Custom setting
require('custom-000-ui')
require('custom-001-keymap')
require('custom-002-codingStyle')
require('custom-003-command')
require('custom-012-normalCoding')
require('custom-050-extraSetting')


