--  Emmet Abbreviation
-- let g:user_emmet_install_global = 0
-- autocmd FileType html,css,javacript EmmetInstall
-- "let g:user_emmet_leader_key='e'
-- let g:user_emmet_expandabbr_key='<C-B>'
-- inoremap <C-B> <Esc>

-- Emmet Abbreviation in lua
vim.g.user_emmet_install_global = 0
vim.api.nvim_command("autocmd FileType html,css,javacript EmmetInstall")
vim.g.user_emmet_expandabbr_key = '<C-B>'
