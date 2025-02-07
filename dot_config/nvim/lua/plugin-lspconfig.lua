-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')
local util = require('lspconfig.util')

-- TypeScript
lspconfig['tsserver'].setup {
    capabilities = capabilities
}

-- Rust
lspconfig['rust_analyzer'].setup {
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {},
    },
}

-- C++
lspconfig['ccls'].setup {
    capabilities = capabilities,
    init_options = {
        cache = {
            directory = ".ccls-cache";
        };
    }
}

-- Golang
lspconfig['gopls'].setup {}

-- Ruby
-- lspconfig['ruby_ls'].setup {}

-- SATySFi

-- if not configs['satysfi-ls'] then
--     configs['satysfi-ls'] = {
--         default_config = {
--             cmd = { 'satysfi-language-server' },
--             filetypes = { 'satysfi' },
--             root_dir = util.root_pattern('.git'),
--             single_file_support = true,
--         },
--         docs = {
--             description = [[
--                 https://github.com/monaqa/satysfi-language-server
--                 Language server for SATySFi.
--                 ]],
--             default_config = {
--                 root_dir = [[root_pattern(".git")]],
--             },
--         },
--     }
-- end
-- lspconfig['satysfi-ls'].setup {
--     autostart = true
-- }


local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<space>e', 'vim.diagnostic.open_float', opts)
map('n', '[d', 'vim.diagnostic.goto_prev', opts)
map('n', ']d', 'vim.diagnostic.goto_next', opts)

local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    map('n', 'K', vim.lsp.buf.hover, bufopts)
    map('n', 'gd', vim.lsp.buf.definition, bufopts)
    map('n', 'gi', vim.lsp.buf.implemention, bufopts)
    map('n', 'gr', vim.lsp.buf.references, bufopts)
    map('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

