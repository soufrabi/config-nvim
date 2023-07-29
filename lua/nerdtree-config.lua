-- VimScript config

-- " NerdTree config

-- " Open by default
-- " autocmd StdinReadPre * let s:std_in=1
-- " autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
-- " Finding the right file
-- nnoremap <Leader>t :NERDTreeToggle<Enter>
-- nnoremap <silent> <Leader>v :NERDTreeFind<CR>
-- " Closing automatically
-- let NERDTreeQuitOnOpen = 1
-- " Exit Vim if NERDTree is the only window remaining in the only tab.
-- " autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') &&
-- " b:NERDTree.isTabTree() | quit | endif

-- " Deleting files
-- let NERDTreeAutoDeleteBuffer = 1
-- " Making it prettier
-- let NERDTreeMinimalUI = 1
-- let NERDTreeDirArrows = 1


-- Lua
-- Closing automatically
vim.api.nvim_command("let NERDTreeQuitOnOpen = 1")
-- Deleting files
vim.api.nvim_command("let NERDTreeAutoDeleteBuffer = 1")
-- Making it prettier
vim.api.nvim_command("let NERDTreeMinimalUI = 1")
vim.api.nvim_command("let NERDTreeDirArrows = 1")

