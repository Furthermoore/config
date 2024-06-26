return {
	'neovim/nvim-lspconfig',
	event = {'BufReadPre', 'BufNewFile'},
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'antosha417/nvim-lsp-file-operations',
	},
	config = function()
		local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local opts = { noremap = true, silent = true }
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr
 
      opts.desc = "Show line diagnostics"
      vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
 
      opts.desc = "Show documentation for what is under cursor"
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

			opts.desc = "Jump to declaration for what is under cursor"
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Jump to definition for what is under cursor"
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

			opts.desc = "Jump to implementation for what is under cursor"
			vim.keymap.set("n", "di", vim.lsp.buf.implementation, opts)

			opts.desc = "Get signature help for what is under cursor"
			vim.keymap.set("n", "<leader>s", vim.lsp.buf.signature, opts)

			opts.desc = "Get type defintion for what is under cursor"
			vim.keymap.set("n", "<leader>T", vim.lsp.buf.type)

			opts.desc = "Format!"
			vim.keymap.set("n", "<leader>F", function()
				vim.lsp.buf.format { async = true }
			end, opts)
    end
 
    lspconfig["sourcekit"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
			filetypes = {'swift', 'c', 'cpp', 'objective-c', 'objective-cpp'},
			root_dir = function()
				return vim.loop.cwd()
			end,
    })

		

	end,
}
