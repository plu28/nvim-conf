local opts = require('opts')

-- Map the Escape key in terminal mode to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)
