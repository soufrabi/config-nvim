--packer plugins
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'



	--Vim commentary
	use {'tpope/vim-commentary'}

	--Ale
	-- use {'dense-analysis/ale'}

	--Coc
	use {'neoclide/coc.nvim', branch = 'release'}

	--Tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

end)
