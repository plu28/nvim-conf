-- some recommended exclusions. you can use `:lua print(vim.bo.filetype)` to
-- get the filetype string of the current buffer
local excluded_filetypes = {
  -- this one is especially useful if you use neovim as a commit message editor
  'gitcommit',
  'harpoon',
  'lazygit',
  'oil',
  'prompt',
  'toggleterm',
}

local excluded_filenames = {
  'do-not-autosave-me.lua',
}

local function save_condition(buf)
  if vim.tbl_contains(excluded_filetypes, vim.fn.getbufvar(buf, '&filetype')) or vim.tbl_contains(excluded_filenames, vim.fn.expand '%:t') then return false end
  return true
end

return {
  {
    'okuuva/auto-save.nvim',
    version = '^1.0.0', -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
    cmd = 'ASToggle', -- optional for lazy loading on command
    event = { 'InsertLeave', 'TextChanged' }, -- optional for lazy loading on trigger events
    opts = {
      condition = save_condition,
    },
  },
}
