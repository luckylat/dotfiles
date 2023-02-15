require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap('n', '<leader>o', ':Telescope file_browser<CR>', { noremap = true })
