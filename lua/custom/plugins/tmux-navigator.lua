return {
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
      -- vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>', { silent = true })
      -- vim.keymap.set('n', '<C-Down>', ':TmuxNavigateDown<CR>', { silent = true })
      -- vim.keymap.set('n', '<C-Up>', ':TmuxNavigateUp<CR>', { silent = true })
      -- vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>', { silent = true })
    end
  }
}
