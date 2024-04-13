vim.g.have_nerd_font = true
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

-- pane switching
vim.keymap.set('n', '<c-h>', '<c-w>h', { desc = 'Move left one pane' })
vim.keymap.set('n', '<c-j>', '<c-w>j', { desc = 'Move down one pane' })
vim.keymap.set('n', '<c-k>', '<c-w>k', { desc = 'Move up one pane' })
vim.keymap.set('n', '<c-l>', '<c-w>l', { desc = 'Move right one pane' })

-- copy/paste to system clipboard
vim.keymap.set({'n', 'x'}, 'gy', '+y')
vim.keymap.set({'n', 'x'}, 'gp', '+p')
