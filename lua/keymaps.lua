-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ";"

map("n","<C-s>",":w <CR>")
map("i","<C-s>",'<Esc>:w <CR>a')

map("n","<C-q>",":qa! <CR>")
map("i","<C-q>","<Esc>:qa! <CR>")




map("n","<C-f>",":NvimTreeToggle <CR>")
map("i","<C-f>","<Esc>:NvimTreeToggle <CR>")

map("n","<Leader>t",":NvimTreeToggle <CR>")


map("n","<C-a>","<C-w>w")
map("i","<C-a>","<Esc><C-w>wi")


-- Go to normal mode without pressing escape
-- map("i","jk","<Esc>")
-- map("i","kj","<Esc>")


-- map("n","<Leader>iop","<Esc>:40vs input.txt <CR>:sp output.txt <CR><C-w>w")

-- map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
-- map("n", "<Leader>", ":<C-u>WhichKey ','<CR>" { silent = true })
-- map("n", "<Leader>?", ":WhichKey ','<CR>")
-- map("n", "<Leader>a", ":cclose<CR>")
