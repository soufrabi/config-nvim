-- nvim top level config file


require('general')
require('keymaps')


require('packer-plugins')


require('plugins-config')

require('nvim-tree-config')

require('nvim-tree').setup {}
