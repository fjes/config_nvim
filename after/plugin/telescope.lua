-- Some telescope keymaps. For more customization and pickers see
-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#pickers
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>tf', builtin.find_files, {desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>tb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>th', builtin.help_tags, { desc = 'Telescope help_tags' })
vim.keymap.set('n', '<leader>tq', builtin.quickfix, { desc = 'Telescope quickfix' })
