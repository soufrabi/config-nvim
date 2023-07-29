-- Keymaps

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

-- map("n","<Leader>t",":NERDTreeToggleVCS %:p:h <CR>")
-- See in vimscript keymap for <Leader>t
map("n","<Leader>T",":NERDTreeToggle %:p:h <CR>")

map("n","<Leader>g",":GFiles <CR>")
map("n","<Leader>G",":GGrep <CR>")
map("n","<Leader>z",":FZF <CR>")
map("n","<Leader>Z",":FZF ")

-- Open a terminal window at the path to the directory containing the current file
map("n","<Leader>b",":tabnew | term <CR>")
map("n","<Leader>B",":term sh -c 'cd %:p:h; /bin/bash' <CR>")


-- Move the cursor to next window
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

vim.api.nvim_command('command BufOnly silent! execute "%bd|e#|bd#"')


--  CP

map('n','@c',':lua close_io_buffers() <CR>:40vs input.txt <CR>:sp output.txt <CR>:wincmd W <CR>:wincmd W <CR>',{ silent = true, noremap = true})
map('n','@C',':lua close_io_buffers() <CR>:40vs input.txt <CR>:sp output.txt <CR>:wincmd W <CR>:wincmd W <CR>',{ silent = true, noremap = true})
map('n','@d',':lua close_io_buffers() <CR>', { silent = true, noremap = true })
map('n','@D',':lua close_io_buffers() <CR>', { silent = true, noremap = true })


-- function has been moved to globals.lua
-- function close_io_buffers()
--   -- Get all open buffer handles
--   local buffers = vim.api.nvim_list_bufs()

--   -- Loop through all open buffers
--   for _, buf in ipairs(buffers) do
--     -- Get the buffer name
--     local name = vim.api.nvim_buf_get_name(buf)

--     -- Extract the file name from the full path
--     local file_name = vim.fn.fnamemodify(name, ":t")

--     -- Check if the file name matches "input.txt" or "output.txt"
--     if file_name == "input.txt" or file_name == "output.txt" then
--       -- Close the buffer
--       vim.api.nvim_buf_delete(buf, {force = true})
--     end
--   end
-- end


