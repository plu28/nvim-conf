
-- local opts = { noremap = true, silent = true }

-- Make sure leader key doesn't do anything
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


-- Map the Escape key in terminal mode to exit terminal mode
-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

-- Mappings for navigating pages
-- vim.keymap.set('n', '<C-k>', '<C-u>zz', opts)
-- vim.keymap.set('n', '<C-j>', '<C-d>zz', opts)

-- Overwrite the default tmux-navigator keybindings
-- vim.g.tmux_navigator_no_mappings = 1

-- My own tmux navigator mappings (using arrow keys instead of hjkl)
-- vim.keymap.set('n', '<C-Left>', ':TmuxNavigateLeft<CR>', { silent = true })
-- vim.keymap.set('n', '<C-Down>', ':TmuxNavigateDown<CR>', { silent = true })
-- vim.keymap.set('n', '<C-Up>', ':TmuxNavigateUp<CR>', { silent = true })
-- vim.keymap.set('n', '<C-Right>', ':TmuxNavigateRight<CR>', { silent = true })
--
-- -- Lua Code Execution
-- vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
-- vim.keymap.set("n", "<leader>x", ":.lua<CR>")
-- vim.keymap.set("v", "<leader>x", ":lua<CR>")

-- Remap for dealing with word wrap
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

