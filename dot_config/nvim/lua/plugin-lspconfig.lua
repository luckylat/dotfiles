-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require('lspconfig')

lspconfig['tsserver'].setup {
    capabilities = capabilities
}
lspconfig['rust_analyzer'].setup {
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {},
    },
}

