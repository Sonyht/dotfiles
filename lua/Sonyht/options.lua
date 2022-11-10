-- settings
local options = {
    relativenumber = true,
    nu = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    hidden = true,
    incsearch = true,
    scrolloff = 6,
    colorcolumn = "80",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = " "
vim.g.netrw_bufsettings = "noma nomod nu nobl nowrap ro"
