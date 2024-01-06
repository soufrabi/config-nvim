--  Vim Commentary

-- autocmd BufNewFile,BufRead *.md,*.mkdn,*.markdown :set filetype=markdown
-- autocmd BufNewFile,BufRead *.cpp :set filetype=cpp
-- autocmd FileType apache setlocal commentstring=#\ %s
-- autocmd FileType cpp setlocal commentstring=//\ %s

vim.cmd('autocmd FileType cpp setlocal commentstring=//\\ %s')
vim.cmd('autocmd FileType dosini setlocal commentstring=#\\ %s')
