--General configuration neovim

local set = vim.opt -- set options

-- set.autoread = true

-- vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
--   command = "if mode() != 'c' | checktime | endif",
--   pattern = { "*" },
-- })

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true
-- set.wrap = false
set.wrap = true

set.swapfile =false
set.backup = false

set.hlsearch = false
set.incsearch = true

set.scrolloff = 8

-- vertical and horizontal splits
set.splitright = true
set.splitbelow = true

-- line numbering
set.nu = true
-- set.relativenumber=true
set.relativenumber=false

-- vim.g.python3_host_prog = '/usr/bin/python3'

set.cursorline = true




