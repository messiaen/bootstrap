local function clone_packer()
	local path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
	if vim.fn.empty(vim.fn.glob(path)) > 0 then
		vim.fn.system {
			'git',
			'clone',
			'--depth=1',
			'https://github.com/wbthomason/packer.nvim',
			path,
		}
	end
end

clone_packer()
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'scrooloose/nerdtree'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	use 'tpope/vim-unimpaired'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'tpope/vim-commentary'

	-- "use 'SirVer/ultisnips'

	-- "use 'honza/vim-snippets'
	use 'airblade/vim-gitgutter'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'EdenEast/nightfox.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- For vsnip users.
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'Vimjas/vim-python-pep8-indent'
end)
