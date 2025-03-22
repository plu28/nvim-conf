return {
  -- MACOS SPECIFIC. Makes option key available for bindings. <a-x>
  {
    "clvnkhr/macaltkey.nvim",
    enabled = false,
    config = function()
        require"macaltkey".setup()
    end
  }
}
