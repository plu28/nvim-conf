local opts = require('opts')

-- Mappings for navigating pages
vim.keymap.set('n', '<C-k>', '<C-u>zz', vim.tbl_extend("force", opts, { desc = "Scroll up and center" }))
vim.keymap.set('n', '<C-j>', '<C-d>zz', vim.tbl_extend("force", opts, { desc = "Scroll down and center" }))
