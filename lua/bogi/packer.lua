vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'rose-pine/neovim'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-sleuth'
	use 'lewis6991/gitsigns.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'numToStr/Comment.nvim'
	use 'windwp/nvim-autopairs'
	use 'sharkdp/fd'
	use 'folke/zen-mode.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'mbbill/undotree'
	-- use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }
	use 'mortepau/codicons.nvim'
	use { 'nvim-tree/nvim-tree.lua', requires = 'mortepau/codicons.nvim' }
	-- use {'folke/trouble.nvim', requires = 'nvim-tree/nvim-web-devicons'}
	-- use { 'romgrk/barbar.nvim', wants = 'nvim-web-devicons' }
	use { 'folke/trouble.nvim', requires = 'mortepau/codicons.nvim' }
	use { 'romgrk/barbar.nvim', wants = 'mortepau/codicons.nvim' }
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use {
		'akinsho/toggleterm.nvim',
		tag = 'v2.*'
	}
	use {
		'neovim/nvim-lspconfig',
		requires = {
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			'j-hui/fidget.nvim',
			'folke/neodev.nvim',
		},
	}
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip'
		},
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	}
	use {
		'nvim-treesitter/nvim-treesitter-textobjects',
		after = 'nvim-treesitter',
	}
	use {
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = {
			'nvim-lua/plenary.nvim'
		},
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make', cond = vim.fn.executable 'make' == 1
	}
end)
