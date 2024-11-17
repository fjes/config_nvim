-- Configurations for my language servers.
-- FIXME maybe put these in individaul files inside the fjes or plugin fodler?
-- Or even the after folder?

-- configure the used language server
require'lspconfig'.pylsp.setup{}

-- configure the clangd
require 'lspconfig'.clangd.setup{
    filetypes = { "c", "cpp", "xc", "objc", "objcpp", "cuda", "proto" },
    root_dir = function(fname)
        -- Find the roo directoy containing the configure.json file
        return lspconfig.util.root_pattern("compile_commands.json")(fname) or
            lspconfig.util.find_git_ancestor(fname) or
            vim.fn.getcwd()
    end,
}

-- Add lua-language-server
require 'lspconfig'.lua_ls.setup{
    on_init = function(client)
        client.config.settings.lua = vimtbl_deep_extend('force', client.config.settings.lua, {
            runtime = { version 'LuaJIT' },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true)
            }
        })
    end,
    settings = {
        Lua = {}
    }
}

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

