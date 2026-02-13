-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Make sure leader key doesn't do anything
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true, desc = "Disable Space key" })

require("custom.lazy") -- plugins
-- [[ Default Options ]]

-- Define options for the key mappings
local opts = { noremap = true, silent = true }

-- Set tab preferences
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Displays line numbers as relative to current line number
vim.wo.relativenumber = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Basic Keymaps Unrelated to Plugins ]]

-- Mappings for navigating pages
vim.keymap.set("n", "<C-k>", "<C-u>zz", { desc = "Scroll up and center", silent = true })
vim.keymap.set("n", "<C-j>", "<C-d>zz", { desc = "Scroll down and center", silent = true })

-- Mappings for navigating splits
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>", { desc = "Vertical split" })
-- vim.keymap.set("n", "<leader>hs", "<cmd>split<CR>")

-- Mappings for toggling fullscreen
vim.keymap.set("n", "<C-\\>", "<C-w>|", { desc = "Maximize window width" })
vim.keymap.set("n", "<C-=>", "<C-w>=", { desc = "Equalize window widths" })

-- Map the Escape key in terminal mode to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode", silent = true })

-- Map <leader>p for alt file
vim.keymap.set("n", "<leader>p", "<C-^>", { desc = "Toggle alternate file", silent = true })

-- Make capital G also center the screen
vim.keymap.set("n", "G", "Gzz", { desc = "Go to bottom and center", silent = true })

-- NOTE: No longer using netrw
-- <leader>ss for pulling up ex in a split
-- vim.keymap.set("n", "<leader>ss", ":Sex!<CR>", opts)

-- <leader>se for pulling up ex on current buffer
-- vim.keymap.set("n", "<leader>se", ":Ex<CR>", opts)

-- opens up nvim terminal
vim.keymap.set("n", "<leader>te", ":te<CR>", { desc = "Open terminal", silent = true })

-- opens up nvim terminal in a split
vim.keymap.set("n", "<leader>ts", ":vsplit | term<CR>", { desc = "Open terminal in split", silent = true })

-- <leader>q for closing a buffer window
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Close current window", silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = "Move up (word wrap)" })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = "Move down (word wrap)" })

-- Resource init.lua
vim.keymap.set("n", "<leader>rs", ":luafile $MYVIMRC<CR>", { desc = "Reload init.lua", silent = true })

-- Lua Code Execution
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Source current file", silent = true })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Execute Lua line", silent = true })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Execute Lua selection", silent = true })

-- Moving up lines of code up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Pastes without overwriting paste buffer
vim.keymap.set("x", "<leader>P", '"_dP', { desc = "Paste without overwriting register" })

-- Unmap arrow keys in insert mode
vim.keymap.set("i", "<Up>", "<Nop>", { desc = "Disable Up arrow" })
vim.keymap.set("i", "<Down>", "<Nop>", { desc = "Disable Down arrow" })
vim.keymap.set("i", "<Left>", "<Nop>", { desc = "Disable Left arrow" })
vim.keymap.set("i", "<Right>", "<Nop>", { desc = "Disable Right arrow" })

-- Unmap <Shift> arrow keys in insert mode
vim.keymap.set("i", "<S-Up>", "<Nop>", { desc = "Disable Shift+Up" })
vim.keymap.set("i", "<S-Down>", "<Nop>", { desc = "Disable Shift+Down" })
vim.keymap.set("i", "<S-Left>", "<Nop>", { desc = "Disable Shift+Left" })
vim.keymap.set("i", "<S-Right>", "<Nop>", { desc = "Disable Shift+Right" })

-- Copies selected line to clipboard (good for sharing line references)
vim.keymap.set("n", "<leader>L", function()
	local file = vim.fn.expand("%")
	local line = vim.fn.line(".")
	vim.fn.setreg("+", string.format("%s:%d", file, line))
	vim.notify("Copied line reference to clipboard")
end, { desc = "Copy line reference to clipboard" })

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})


-- When going back, center screen
vim.keymap.set("i", "<C-o>", "<C-o>zz", { desc = "Jump back and center" })

-- Toggle spell check (normal mode)
vim.keymap.set("n", "<leader>tz", ":setlocal spell!<CR>", { desc = "Toggle spell check" })

-- Auto-fix with first suggestion (normal mode)
vim.keymap.set("n", "<leader>z", "1z=", { desc = "Fix word with first suggestion" })

-- Change the highlight color
vim.api.nvim_set_hl(0, "GitSignsCurrentLineBlame", { fg = "#888888", italic = true })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
