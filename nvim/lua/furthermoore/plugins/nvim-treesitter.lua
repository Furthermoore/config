return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "swift"},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true
			},
			incremental_selection = {
				enable = true,
				keymaps = {
      		init_selection = "gnn", -- set to `false` to disable one of the mappings
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			indent = {
				enable = true	
			},
		})

		vim.cmd([[set foldmethod=expr]])
		vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]])
		vim.cmd([[set nofoldenable]])

	end
}
