local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()



-- Keymaps
-- LspZeroFormat the entire buffer
vim.keymap.set('n', '<leader>F', "<Esc> :LspZeroFormat <CR>", { silent = true, noremap = true })
