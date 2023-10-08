-- Packer plugins
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Vim commentary
	use { 'tpope/vim-commentary' }

	-- Ale
	-- use { 'dense-analysis/ale' }

	-- Coc
	-- use { 'neoclide/coc.nvim', branch = 'release' }


	-- Lsp-zero
	use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
	-- LSP Support
	{'neovim/nvim-lspconfig'},             -- Required
	{'williamboman/mason.nvim'},           -- Optional
	{'williamboman/mason-lspconfig.nvim'}, -- Optional

	-- Autocompletion
	{'hrsh7th/nvim-cmp'},         -- Required
	{'hrsh7th/cmp-nvim-lsp'},     -- Required
	{'hrsh7th/cmp-buffer'},       -- Optional
	{'hrsh7th/cmp-path'},         -- Optional
	{'saadparwaiz1/cmp_luasnip'}, -- Optional
	{'hrsh7th/cmp-nvim-lua'},     -- Optional

	-- Snippets
	{'L3MON4D3/LuaSnip'},             -- Required
	{'rafamadriz/friendly-snippets'}, -- Optional
	}
	}




	-- Ultisnippets
	-- use {'SirVer/ultisnips'}

	-- NvimTree
	-- use {'nvim-tree/nvim-tree.lua'}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly'           -- optional, updated every week. (see issue #1193)
	}

	-- NerdTree
	-- use {'preservim/nerdtree'}

	-- Vim-Airline
	use { 'vim-airline/vim-airline' }
	use { 'vim-airline/vim-airline-themes' }

	-- Fugitive
	use { 'tpope/vim-fugitive' }

	-- Polyglot
	-- use { 'sheerun/vim-polyglot' }

	-- Gruvbox
	-- use {'morhetz/gruvbox'}

	-- Vim - colorschemes
	use { 'flazz/vim-colorschemes' }


	-- nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

	-- Indent line
	-- use { 'Yggdroot/indentLine' }

	-- indent-blankline
	use "lukas-reineke/indent-blankline.nvim"

	-- Vim obsession
	use { 'tpope/vim-obsession' }

	-- Emmet abbreviation
	-- use { 'mattn/emmet-vim' }

	-- Latex
	use { 'lervag/vimtex' }

	-- Latex preview
	-- use {'xuhdev/vim-latex-live-preview'}
	-- doesn't provide linting

	-- Markdown preview
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
		ft = { "markdown" },
	})

	-- Fzf
	-- use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
	-- use 'junegunn/fzf.vim'

	-- nvim-telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}


	-- Vim bookmarks
	-- use { 'MattesGroeger/vim-bookmarks' }

	-- Folds
	use { 'anuvyklack/pretty-fold.nvim',
		config = function()
			require('pretty-fold').setup()
		end
	}


	-- Catppuccin
	-- colorscheme works better with true colorsupport
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Image Viewer using Ascii art
	use {
		'samodostal/image.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
	}

	-- Marks plugin
	-- use { "chentoast/marks.nvim" }
	-- Unable to delete marks properly for some representation
	-- Not a problem of the plugin

	-- Undo tree written in vimscript
	-- use {'mbbill/undotree'}


	-- Undo-Tree written in lua
	use {
		"jiaoshijie/undotree",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	}

    -- Jupyter notebook
    -- use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }


end)
