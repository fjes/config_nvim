-- Configurations for my language servers.
-- FIXME maybe put these in individaul files inside the fjes or plugin fodler?
-- Or even the after folder?

local lspconfig = require("lspconfig")

-- configure the used language server
--require'lspconfig'.pylsp.setup{}

-- Apparently this is the way to use now, but it doesn't work as expected. There is something I do not yet understand!
vim.lsp.config('pylsp', {
    filetypes = { "py" },
})
vim.lsp.enable('pylsp')

-- configure the clangd
-- new: the new lsp config dos not support the root pattern thing to find the
-- `compile_commands.json` file which is used by the clangd language server.
-- But somehow it looks like this LSP is not really working as expected for me.
-- Even the default LSP keybindings seem to be off.
vim.lsp.config('clangd', {
    filetypes = { "c", "cpp", "xc", "objc", "objcpp", "cuda", "proto", },
--[[
    root_dir = function(fname)
        -- Find the roo directoy containing the configure.json file
        return lspconfig.util.root_pattern("compile_commands.json")(fname) or
            lspconfig.util.find_git_ancestor(fname) or
            vim.fn.getcwd()
    end,
--]]
})
vim.lsp.enable('clangd')

-- Add lua-language-server
--require('lspconfig').lua_ls.setup{
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                checkThirdParty = false,
                library = vim.api.nvim_get_runtime_file("", true)
            },
        }
    }
})
vim.lsp.enable('lua_ls')

-- Add SQL language server
-- This is directly fetched form the README at https://github.com/sqls-server/sqls
-- It is not easy to figure out what the configuration shall look like.
--require'lspconfig'.sqls.setup{
vim.lsp.config('spls', {
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
})
vim.lsp.enable('spls')

