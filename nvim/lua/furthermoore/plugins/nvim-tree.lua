return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- optionally enable 24-bit colour
		vim.opt.termguicolors = true

		-- empty setup using defaults
		require("nvim-tree").setup()

		-- keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>tt", "<cmd>NvimTreeFindFileToggle!<cr>")
		keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<cr>")

	end
}
