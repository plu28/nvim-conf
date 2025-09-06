return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
		config = function()
			local oil = require("oil")
			oil.setup({
				win_options = {
					signcolumn = "yes:2",
				},
				columns = {
					"permissions",
					"size",
					"mtime",
					"icon",
				},
				keymaps = {
					["q"] = { "actions.close", mode = "n" },
				}
			})
			vim.keymap.set("n", "<leader>o", function()
				oil.toggle_float(nil)
			end)
			vim.keymap.set("n", "q", function()
				oil.toggle_float(nil)
			end)
		end,
	},
	{
		"refractalize/oil-git-status.nvim",

		dependencies = {
			"stevearc/oil.nvim",
		},

		config = true,
	},
}
