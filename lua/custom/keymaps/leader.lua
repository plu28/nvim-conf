-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Make sure leader key doesn't do anything
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
