-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n","<C-s>",":w <CR>")
map("i","<C-s>","<Esc>:w <CR>a")

map("n","<C-q>",":qa! <CR>")
map("i","<C-q>","<Esc>:qa! <CR>")







-- map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
-- map("n", "<Leader>", ":<C-u>WhichKey ','<CR>" { silent = true })
-- map("n", "<Leader>?", ":WhichKey ','<CR>")
-- map("n", "<Leader>a", ":cclose<CR>")
