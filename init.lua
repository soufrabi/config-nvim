-- nvim top level config file


require('general')
require('keymaps')


require('packer-plugins')


-- require('nvim-tree-config')
require('coc-config')
require('ale-config');
require('indent-line-config')

require('coderunner')

require('emmet-config')
require('nerdtree-config')
require('markdown-preview-config')

vim.cmd('source ~/.config/nvim/vimscript/ale-config.vim')
vim.cmd('source ~/.config/nvim/vimscript/general.vim')
vim.cmd('source ~/.config/nvim/vimscript/vim-commentary.vim')
vim.cmd('source ~/.config/nvim/vimscript/coc-config.vim')


local function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

-- coc color scheme light and dark

if (file_exists('vimscript/coc-config-light.vim'))
then
vim.cmd('source ~/.config/nvim/vimscript/coc-config-light.vim')
end


if (file_exists('vimscript/coc-config-dark.vim'))
then
vim.cmd('source ~/.config/nvim/vimscript/coc-config-dark.vim')
end


