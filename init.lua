-- nvim top level config file


require('general')
require('keymaps')


require('packer-plugins')


require('nvim-tree-config')
require('nvim-tree-webdevicons-config')

require('coc-config')
require('ale-config');
require('indent-line-config')


require('emmet-config')
require('nerdtree-config')
require('markdown-preview-config')
require('bookmarks-config')

require('general-python')

require('coderunner')
require('auto-commands')
require('telescope-config')


vim.cmd('source ~/.config/nvim/vimscript/ale-config.vim')
vim.cmd('source ~/.config/nvim/vimscript/general.vim')
vim.cmd('source ~/.config/nvim/vimscript/vim-commentary.vim')
vim.cmd('source ~/.config/nvim/vimscript/coc-config.vim')

-- Code runner moved to lua
-- vim.cmd('source ~/.config/nvim/vimscript/coderunner.vim')

vim.cmd('source ~/.config/nvim/vimscript/fzf-config.vim')
vim.cmd('source ~/.config/nvim/vimscript/bookmarks-config.vim')
vim.cmd('source ~/.config/nvim/vimscript/nerdtree-config.vim')
vim.cmd('source ~/.config/nvim/vimscript/keymaps.vim')


-- Optional / Device specific files


-- Get the path to the home directory
local home_dir = os.getenv("HOME") or os.getenv("USERPROFILE")

-- Print the home directory path
-- print(home_dir)

local function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


-- Coc color schemes : light or dark

if (file_exists(home_dir..'/.config/nvim/vimscript/coc-config-light.vim'))
then
vim.cmd('source ~/.config/nvim/vimscript/coc-config-light.vim')
end


if (file_exists(home_dir..'/.config/nvim/vimscript/coc-config-dark.vim'))
then
vim.cmd('source ~/.config/nvim/vimscript/coc-config-dark.vim')
end


-- Testing

if (file_exists(home_dir..'/.config/nvim/vimscript/test.vim'))
then
vim.cmd('source ~/.config/nvim/vimscript/test.vim')
end
-- Write test vimscript code in vimscript/test.vim

pcall(require,"test")
-- Write test lua code in lua/test.lua


-- check if the file exists using pcall
-- local ok, _ = pcall(require, "test")

-- if the file does not exist, print an error message
-- if not ok then
--   print("Error: " .. "test.lua" .. " not found!")
-- else
--    print("lua/test.lua ".."found")
-- end



