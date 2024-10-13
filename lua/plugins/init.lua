-- optional lazy bootstrap?


-- more complex configurations can be put into their own files
return {

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
}
