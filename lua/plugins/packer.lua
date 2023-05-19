local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'Shatur/neovim-ayu'
	use 'feline-nvim/feline.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use {
		'lewis6991/gitsigns.nvim',
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	}
	use 'nvim-tree/nvim-tree.lua'
	use 'nanozuki/tabby.nvim'
	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end
	}
	use 'L3MON4D3/LuaSnip'
	use "rafamadriz/friendly-snippets"
	use {
		"hrsh7th/nvim-cmp",
		requires = {
		    "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
		    'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
		    'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
		    'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
		}
	}
	use {
		'tzachar/cmp-tabnine',
		run = './install.sh',
		requires = 'hrsh7th/nvim-cmp'
	}
end)

