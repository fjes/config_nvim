-- vim.opt.guicursor =  ""

-- permanent line number is fine.
vim.opt.nu = true
vim.opt.rnu = true

-- This may be overwritten by some LSP or treesitter stuff.
-- This should be depending on the filetype. But as default this is fine.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Keep 8 lines from cursor to end of screen.
vim.opt.scrolloff = 8
