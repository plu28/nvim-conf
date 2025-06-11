-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Make sure leader key doesn't do anything
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

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
vim.keymap.set("n", "<C-k>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-j>", "<C-d>zz", opts)

-- Mappings for navigating splits
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")

-- Mappings for toggling fullscreen
vim.keymap.set("n", "<C-\\>", "<C-w>|")
vim.keymap.set("n", "<C-=>", "<C-w>=")

-- Map the Escape key in terminal mode to exit terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- Map <leader>p for alt file
vim.keymap.set("n", "<leader>p", "<C-^>", opts)

-- Make capital G also center the screen
vim.keymap.set("n", "G", "Gzz", opts)

-- <leader>ss for pulling up ex in a split
vim.keymap.set("n", "<leader>ss", ":Sex!<CR>", opts)

-- <leader>se for pulling up ex on current buffer
vim.keymap.set("n", "<leader>se", ":Ex<CR>", opts)

-- opens up nvim terminal
vim.keymap.set("n", "<leader>te", ":te<CR>", opts)

-- opens up nvim terminal in a split
vim.keymap.set("n", "<leader>ts", ":vsplit | term<CR>", opts)

-- <leader>q for quitting a buffer
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Resource init.lua
vim.keymap.set("n", "<leader>rs", ":luafile $MYVIMRC<CR>", opts)

-- Lua Code Execution
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", opts)
vim.keymap.set("n", "<leader>x", ":.lua<CR>", opts)
vim.keymap.set("v", "<leader>x", ":lua<CR>", opts)

-- Moving up lines of code up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pastes without overwriting paste buffer
vim.keymap.set("x", "<leader>P", '"_dP')

-- Unmap arrow keys in insert mode
vim.keymap.set("i", "<Up>", "<Nop>")
vim.keymap.set("i", "<Down>", "<Nop>")
vim.keymap.set("i", "<Left>", "<Nop>")
vim.keymap.set("i", "<Right>", "<Nop>")

-- Unmap <Shift> arrow keys in insert mode
vim.keymap.set("i", "<S-Up>", "<Nop>")
vim.keymap.set("i", "<S-Down>", "<Nop>")
vim.keymap.set("i", "<S-Left>", "<Nop>")
vim.keymap.set("i", "<S-Right>", "<Nop>")

-- Copies selected line to clipboard (good for sharing line references)
vim.keymap.set("n", "<leader>L", function()
	local file = vim.fn.expand("%")
	local line = vim.fn.line(".")
	vim.fn.setreg("+", string.format("%s:%d", file, line))
	vim.notify("Copied line reference to clipboard")
end, { desc = "Copy line reference to clipboard" })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
