-- fzf-config


vim.g.fzf_layout = { window = { width = 0.8, height = 0.5, highlight = 'Comment' } }

vim.g.fzf_layout = { window = { width = 0.8, height = 0.5, highlight = 'Comment' } }

vim.g.fzf_colors = {
   ['fg+'] = {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
   ['bg+'] = {'bg', 'CursorLine', 'CursorColumn'},
}

vim.g.fzf_colors = {
   ['fg'] = {'fg', 'fzf_fg'},
   ['hl'] = {'fg', 'fzf_hl'},
   ['fg+'] = {'fg', 'fzf_fgp'},
   ['hl+'] = {'fg', 'fzf_hlp'},
   ['info'] = {'fg', 'fzf_info'},
   ['prompt'] = {'fg', 'fzf_prompt'},
   ['pointer'] = {'fg', 'fzf_pointer'},
   ['spinner'] = {'fg', 'fzf_spinner'},
}

-- This is the default extra key bindings
vim.g.fzf_action = {
   ['ctrl-t'] = 'tab split',
   ['ctrl-x'] = 'split',
   ['ctrl-v'] = 'vsplit',
}


-- Commands

vim.api.nvim_command('command! -nargs=* W w')



vim.cmd([[
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
]])
