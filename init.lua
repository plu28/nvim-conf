-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.o`
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.o.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'
-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- Always use relative line numbers
vim.o.relativenumber = true

-- [[ Basic Keymaps ]]

-- Mappings for navigating pages
vim.keymap.set('n', '<C-k>', '<C-u>zz', { desc = 'Scroll up and center', silent = true })
vim.keymap.set('n', '<C-j>', '<C-d>zz', { desc = 'Scroll down and center', silent = true })

-- Center screen when navigating jumplist
vim.keymap.set('n', '<C-o>', '<C-o>zz', { desc = 'Jump back and center' })
vim.keymap.set('n', '<C-i>', '<C-i>zz', { desc = 'Jump forward and center' })

-- Mappings for navigating splits
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Move to right window' })
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Move to left window' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Move to bottom window' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Move to top window' })
vim.keymap.set('n', '<leader>vs', '<cmd>vsplit<CR>', { desc = 'Vertical split' })

-- Mappings for toggling fullscreen
vim.keymap.set('n', '<leader>f', function() require('custom.fullscreen').toggle() end, { desc = 'Toggle fullscreen window' })

-- Map the Escape key in terminal mode to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode', silent = true })

-- Map <leader>p for alt file
vim.keymap.set('n', '<leader>p', '<C-^>', { desc = 'Toggle alternate file', silent = true })

-- Make capital G also center the screen
vim.keymap.set('n', 'G', 'Gzz', { desc = 'Go to bottom and center', silent = true })

-- opens up nvim terminal
vim.keymap.set('n', '<leader>te', ':te<CR>', { desc = 'Open terminal', silent = true })

-- opens up nvim terminal in a split
vim.keymap.set('n', '<leader>ts', ':vsplit | term<CR>', { desc = 'Open terminal in split', silent = true })

-- Lua Code Execution
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Source current file', silent = true })
vim.keymap.set('n', '<leader>x', ':.lua<CR>', { desc = 'Execute Lua line', silent = true })
vim.keymap.set('v', '<leader>x', ':lua<CR>', { desc = 'Execute Lua selection', silent = true })

-- Moving up lines of code up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = vim.diagnostic.severity.ERROR },

  -- Can switch between these as you prefer
  virtual_text = true, -- Text shows up at the end of the line
  virtual_lines = false, -- Teest shows up underneath the line, with virtual lines

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  jump = { float = true },
}

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Close current window', silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Write current buffer', silent = true })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
-- NOTE: Plugins are installed in ./lua/custom/plugins/
require 'custom.lazy'
require 'custom.md_img'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
