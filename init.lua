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
