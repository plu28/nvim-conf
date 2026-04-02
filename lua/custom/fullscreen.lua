local M = {}

-- state storage
local saved_layout = nil
local saved_cmd = nil

function M.toggle()
  -- if not fullscreen → save layout and maximize
  if saved_layout == nil then
    saved_layout = vim.fn.winlayout()
    saved_cmd = vim.fn.winrestcmd()

    -- make current window occupy the tab
    vim.cmd("wincmd |")
    vim.cmd("wincmd _")
  else
    -- restore layout
    vim.cmd(saved_cmd)
    saved_layout = nil
    saved_cmd = nil
  end
end

return M
