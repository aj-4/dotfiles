if !exists('g:lspconfig')
	finish
endif

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	-- Mappings.
	local opts = { noremap = true, silent = true }

	buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
	
	if client.resolved_capabilities.document_formatting then
		vim.api.nvim_command [[augroup Format]]
		vim.api.nvim_command [[autocmd! * <buffer>]]
		vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
		vim.api.nvim_command [[augroup END]]
	end
	
end

	nvim_lsp.tsserver.setup {
		on_attach = on_attach,
		filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript" },
		cmd = { "typescript-language-server", "--stdio" }
	}

      nvim_lsp.sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
	  Lua = {
	    diagnostics = {
	      globals = { 'vim' }
	      }
	    },

	    workspace = {
	      library = vim.api.nvim_get_runtime_file("", true)
	      }
	  }
	}

EOF
