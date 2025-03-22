return {
  -- v0
  -- 'navarasu/onedark.nvim',
  -- v1
  -- 'rebelot/kanagawa.nvim',
  -- v2
  {
    'vague2k/vague.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'vague'
    end,
  },
  {
    "letieu/harpoon-lualine",
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      }
    },
  },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',

    dependencies = {
      "letieu/harpoon-lualine",
    },
    -- 'vimpostor/vim-tpipeline',
    -- See `:help lualine.txt`
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = 'vague',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_x = {
            {
              "harpoon2",
            },
          }
        },
      })
    end
  }
}
