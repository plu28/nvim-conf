-- Lua Code Execution
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source current file", silent = true })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Execute Lua line", silent = true })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Execute Lua selection", silent = true })
