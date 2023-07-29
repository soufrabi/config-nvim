-- Ale
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_lint_on_text_changed = 1
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_sign_error = '●'
vim.g.ale_sign_warning = '.'
 -- You can disable this option too
 -- if you don't want linters to run on opening a file
vim.g.ale_lint_on_enter = 0




-- Look at vimscript/ale-config.vim


vim.g.ale_pattern_options = {
   ['.*\\.cpp$'] = {ale_enabled = 0},
   ['.*\\.c$'] = {ale_enabled = 0},
   ['.*\\.tex$'] = {ale_enabled = 0},
}

vim.g.ale_linters = {
   sh = {'language_server'},
}
