-- Grepped from ThePrimeagen to make the background transparent.
-- Don't know if this is the right way to do it here, but my after/plugin/ is
-- yet occupied by some coding style from my old .vim/

function MyColorScheme(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Nomral", { bg = "none" })
    vim.api.nvim_set_hl(0, "NomralFloat", { bg = "none" })
end
