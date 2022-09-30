set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set nowrap
set ignorecase
set smartcase
set number

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

nnoremap tn :tabedit<CR>
nnoremap tc :tabclose<CR>
nnoremap tt :NvimTreeToggle<CR>

if has("nvim")
	let g:plug_home = stdpath('data') . 'plugged'
endif

" plugs
call plug#begin()
	Plug 'sainnhe/everforest'
	Plug 'tpope/vim-fugitive'
	Plug 'cohama/lexima.vim'
  Plug 'tpope/vim-surround'

	if has("nvim")
		Plug 'neovim/nvim-lspconfig'
		Plug 'glepnir/lspsaga.nvim'
		Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
		
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'nvim-telescope/telescope-file-browser.nvim'

		Plug 'onsails/lspkind-nvim'
		Plug 'hrsh7th/cmp-nvim-lsp'
		Plug 'hrsh7th/cmp-buffer'
		Plug 'hrsh7th/nvim-cmp'

		Plug 'L3MON4D3/LuaSnip'

		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'nvim-lualine/lualine.nvim'

	  Plug 'windwp/nvim-ts-autotag'
  	Plug 'windwp/nvim-autopairs'
		Plug 'lewis6991/gitsigns.nvim'

    Plug 'akinsho/bufferline.nvim'

    Plug 'kyazdani42/nvim-tree.lua'

	endif

call plug#end()

" everforest theme
if has('termguicolors')
	set termguicolors
endif

set background=dark
let g:everforest_background='hard'
let g:everforest_ui_contrast='high'
let g:everforest_transparent_background=1
colorscheme everforest
