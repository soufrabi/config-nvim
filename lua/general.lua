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

set.swapfile = false
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
set.relativenumber = false

-- vim.g.python3_host_prog = '/usr/bin/python3'

set.cursorline = true

-- update time might be the reason for frequent hangs 
-- its unit is milliseconds
set.updatetime = 2000


set.ignorecase = true
-- for case sensitive search use 'set smartcase '




-- colorscheme
-- vim.cmd("colorscheme Dark")
-- Dark colorscheme is in vim-colorschemes plugin

-- this colorscheme may be overriden by catppuccin
-- check catppuccin.lua and colors-config.lua

-- Alternatives
-- vim.cmd("colorscheme brighton")



-- Disables pop menu that opens when you Right-Click
-- Pressing <RightMouse> extends selection instead of showing popup-menu
vim.api.nvim_command('set mousemodel=extend')


-- Enable persistent undo
vim.cmd('set undofile')
-- vim.o.undodir = '~/.config/nvim/undo'
-- vim.o.undodir = home_dir..'/.config/nvim/undo'



if G.getOS() == 'Linux' then
   vim.o.undodir = G.config_dir..'/undo'
elseif G.getOS() == 'Windows' then
   vim.o.undodir = G.config_dir..'\\undo'
end





