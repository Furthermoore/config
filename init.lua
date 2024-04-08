vim.opt.number = true
vim.opt.rnu = true
vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- wrap text
vim.opt.wrap = true
-- and preserve the indentation of virtual lines

-- ignore uppercase letters
vim.opt.ignorecase = true
-- unless the search term has an uppercase letter.
vim.opt.smartcase = true

-- disable search result highlighting
vim.opt.hlsearch = false
-- keybindings

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>e', '<cmd>tabnew $MYVIMRC<cr>', { desc = 'Edit Config' })
vim.keymap.set('n', '<leader>s', '<cms>source $MYVIMRC<cr>', { desc = 'Source Config' }) 
vim.keymap.set('i', 'jk', '<esc>', { desc = 'Escape' })

-- copy/paste to system clipboard
vim.keymap.set({'n', 'x'}, 'gy', '+y')
vim.keymap.set({'n', 'x'}, 'gp', '+p')

-- lazy.nvim setup

local lazy = {}

function lazy.install(path)
	if not (vim.uv or vim.loop).fs_stat(path) then
		print('Installing lazy.nvim ...')
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable',
			path
		})
	end
end

function lazy.setup(plugins)
	if vim.g.plugins_ready then
		return
	end

	-- You can "comment out the line below after lazy.nvim" is installed
	-- lazy.install(lazy.path)	

	vim.opt.rtp:prepend(lazy.path)
	
	require('lazy').setup(plugins, lazy.opts)
	vim.g.plugins_reader = true
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

lazy.opts = {}

lazy.setup ({
  {'folke/tokyonight.nvim'},
	{'nvim-lualine/lualine.nvim'}
})


vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')


require('lualine').setup()
