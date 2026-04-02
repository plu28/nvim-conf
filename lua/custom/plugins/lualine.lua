return {
  {
    'letieu/harpoon-lualine',
    dependencies = {
      {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
      },
    },
  },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',

    dependencies = {
      'letieu/harpoon-lualine',
    },
    -- 'vimpostor/vim-tpipeline',
    -- See `:help lualine.txt`
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'tokyonight',
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_x = {
            {
              'harpoon2',
            },
          },
        },
      }
    end,
  },
}
