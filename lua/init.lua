require("lazyinit")

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

require("fjes")
require("fjes.colors")

MyColorScheme("tokyonight-moon")
