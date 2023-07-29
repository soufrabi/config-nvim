-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ";"

map("n","<C-w>","<Nop>")
map("i","<C-w>","<Nop>")
map("v","<C-w>","<Nop>")

map("n","<C-q>","<Nop>")
map("i","<C-q>","<Nop>")
map("v","<C-q>","<Nop>")

-- map("n","<C-s>",":w <CR>")
-- map("i","<C-s>",'<Esc>:w <CR>a')
-- map("n","<Leader>ss",":w <CR>")

-- map("n","<C-q>",":qa! <CR>")
-- map("i","<C-q>","<Esc>:qa! <CR>")
-- map("n","lll",":qa! <CR>")

-- map("n",";",":")
-- map("v",";",":")
-- map("n",";;",";")
-- map("v",";;",";")


-- map("n",":",";")
-- map("n",":",";")

map("n","<Leader>k","<C-u>")
map("n","<Leader>j","<C-d>")


-- map("n","<C-f>",":NvimTreeToggle <CR>")
-- map("i","<C-f>","<Esc>:NvimTreeToggle <CR>")

-- map("n","<Leader>t",":NvimTreeToggle <CR>")
map("n","<Leader>t",":NERDTreeToggleVCS %:p:h <CR>")
map("n","<Leader>T",":NERDTreeToggle %:p:h <CR>")

map("n","<Leader>g",":GFiles <CR>")
map("n","<Leader>G",":GGrep <CR>")
map("n","<Leader>z",":FZF <CR>")

-- open a terminal window at the path to the directory containing the current file
map("n","<Leader>b",":term sh -c 'cd %:p:h; /bin/bash' <CR>")


map("n","<C-a>","<C-w>w")
map("i","<C-a>","<Esc><C-w>wi")
map("v","<C-a>","<Esc><C-w>wi")


-- ALE linter
-- for ale linter key binding to move to next error using Ctrl + e
-- nmap <silent> <C-e> <Plug>(ale_next_wrap)
-- nnoremap <c-e> <Plug>(ale_next_wrap) 
-- inoremap <c-e> <Esc> <Plug>(ale_next_wrap) 
-- vnoremap <c-e> <Esc> <Plug>(ale_next_wrap)
map('n','<Leader>d',"<Plug>(ale_previous_wrap)")
map("n","<Leader>e","<Plug>(ale_next_wrap)")


-- Go to normal mode without pressing escape
-- map("i","jk","<Esc>")
-- map("i","kj","<Esc>")


-- map("n","<Leader>iop","<Esc>:40vs input.txt <CR>:sp output.txt <CR><C-w>w")

-- map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
-- map("n", "<Leader>", ":<C-u>WhichKey ','<CR>" { silent = true })
-- map("n", "<Leader>?", ":WhichKey ','<CR>")
-- map("n", "<Leader>a", ":cclose<CR>")
