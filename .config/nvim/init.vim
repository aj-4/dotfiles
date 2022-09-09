set shiftwidth=2

if has("nvim")
	let g:plug_home = stdpath('data') . 'plugged'
endif

" plugs
call plug#begin()
	Plug 'sainnhe/everforest'
	Plug 'tpope/vim-fugitive'
	Plug 'cohama/lexima.vim'

	if has("nvim")
		Plug 'neovim/nvim-lspconfig'
		Plug 'glepnir/lspsaga.nvim'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'nvim-telescope/telescope-file-browser.nvim'

		Plug 'hrsh7th/cmp-nvim-lsp'
		Plug 'hrsh7th/cmp-buffer'
		Plug 'hrsh7th/cmp-path'
	        Plug 'hrsh7th/cmp-cmdline'
		Plug 'hrsh7th/nvim-cmp'
		Plug 'onsails/lspkind-nvim'
		Plug 'L3MON4D3/LuaSnip'
		Plug 'saadparwaiz1/cmp_luasnip'

		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'nvim-lualine/lualine.nvim'
	endif

call plug#end()

" everforest theme
if has('termguicolors')
	set termguicolors
endif

set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
colorscheme everforest
