function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--------------------------------
-- Normal Mode
--------------------------------
-- empty line before new line
map("n", "<leader>o", "o<ESC>o", { silent = true })
-- netrw
map("n", "<leader>pv", ":Ex<CR>", { silent = true })
-- movement
map("n", "<C-u>", "<C-u>zz", { silent = true })
map("n", "<C-d>", "<C-d>zz", { silent = true })
-- yank into clipboard
map("n", "<leader>y", "\"*y", { silent = true })


--------------------------------
-- Visual Mode
--------------------------------
-- paste in void register
map("x", "<leader>p", "\"_dP", { silent = true })


--------------------------------
-- Visual + Select Mode
--------------------------------
-- moving lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
