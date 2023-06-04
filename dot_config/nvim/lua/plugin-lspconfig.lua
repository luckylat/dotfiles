-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

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

lspconfig['gopls'].setup {}

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

