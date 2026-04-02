return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- v0: 'navarasu/onedark.nvim',
    -- v1: 'rebelot/kanagawa.nvim',
    -- v2: 'vague2k/vague.nvim'
    -- v3?: 'dasupradyumna/midnight.nvim'
    -- v3?: 'folke/tokyonight.nvim' specifically tokyonight-moon
    -- v3?: 'nyoom-engineering/oxocarbon.nvim'
    -- v3?: 'Aejkatappaja/sora'
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      -- ---@diagnostic disable-next-line: missing-fields
      -- require('tokyonight').setup {
      --   styles = {
      --     comments = { italic = false }, -- Disable italics in comments
      --   },
      -- }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-moon'
      vim.opt.background = 'dark'
    end,
  },
}
