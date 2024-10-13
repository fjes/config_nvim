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

-- FIXME may put the treesitter config into an after moduel, at the moment
-- after/plugin is a symlink to old vim configurations
require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the listed parsers MUST always be installed)
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python", "bash" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
        enable = true,
    },
}
