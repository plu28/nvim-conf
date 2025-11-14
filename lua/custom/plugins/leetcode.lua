return {
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
		dependencies = {
			"nvim-telescope/telescope.nvim",
			-- "ibhagwan/fzf-lua",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},

		config = function(_, opts)
			require("leetcode").setup(opts)

			-- keymaps (use normal mode if you want them global)
			vim.keymap.set("n", "<leader>Ls", ":Leet submit<CR>", { desc = "LeetCode Submit" })
			vim.keymap.set("n", "<leader>Lt", ":Leet test<CR>", { desc = "LeetCode Test" })
			vim.keymap.set("n", "<leader>LL", ":Leet lang<CR>", { desc = "LeetCode Change Language" })
		end,

	},
}
