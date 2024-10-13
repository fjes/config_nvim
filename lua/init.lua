-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {

    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {
      "neovim/nvim-lspconfig",
      -- what else shall I put here?
    },
    { -- most important vim-fugititive :D
      "tpope/vim-fugitive",
    },
    {
        -- The guy here https://leimstift.de/2024/03/19/using-gtags-in-neovim/
        -- also the telescope-gtags plugin is used. Well I don't want to
        -- overwhelm with plugins and I don't know yet if I want to use it. Ont
        -- eh other hand, if GTags works for me why do something about it?
        "ivechan/gtags.vim",
    },
    {
        "nvim-treesitter/nvim-treesitter",
    },
    -- add telescope for fuzzy finding stuff?
    -- add your plugins here
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Update the runtime path
--vim.opt.rtp:append("~/.vim")

vim.cmd([[colorscheme tokyonight-storm]])


-- configure the used language server
require'lspconfig'.pylsp.setup{}

-- configure the clangd
require 'lspconfig'.clangd.setup{}

-- Add lua-language-server
require 'lspconfig'.lua_ls.setup{}

-- Add SQL language server
-- This is directly fetched form the README at https://github.com/sqls-server/sqls
-- It is not easy to figure out what the configuration shall look like.
require'lspconfig'.sqls.setup{
--[[
	on_attach = function(client, bufnr)
		require('sqls').on_attach(client, bufnr)
	end
	settings = {
		sqls = {
			connections = {
				{
					driver = 'sqlite3',
					dataSourceName = '',
				},
			},
		},
	},
--]]
}

require('fjes')
