-- Autocmd to detect if an image is pasted into a markdown file and automatically format it
local M = {}

-- extensions you want treated as images
local image_ext = {
  png = true,
  jpg = true,
  jpeg = true,
  gif = true,
  webp = true,
  svg = true,
  avif = true,
}

-- check if a word looks like an image path
local function is_image_path(word)
  -- remove quotes or parentheses pasted by terminals/browsers
  word = word:gsub('^[\'"(]+', ''):gsub('[\'")]$', '')

  local ext = word:match '%.([a-zA-Z0-9]+)$'
  if not ext then return false end
  return image_ext[ext:lower()] == true
end

-- avoid double formatting
local function already_markdown(line, word) return line:find('!%b[]%b()', 1, false) ~= nil end

function M.on_change()
  local bufnr = 0
  if vim.bo[bufnr].filetype ~= 'markdown' then return end

  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_get_current_line()

  -- get last "token" before cursor
  local before = line:sub(1, col)
  local word = before:match '([^%s]+)$'
  if not word then return end

  if not is_image_path(word) then return end
  if already_markdown(line, word) then return end

  local start_col = col - #word
  local replacement = string.format('![](%s)', word)

  vim.api.nvim_buf_set_text(0, row - 1, start_col, row - 1, col, { replacement })
end

-- autocmd
vim.api.nvim_create_autocmd({ 'TextChangedI', 'TextChangedP' }, {
  callback = function()
    -- schedule prevents recursion & paste glitches
    vim.schedule(M.on_change)
  end,
})

return M
