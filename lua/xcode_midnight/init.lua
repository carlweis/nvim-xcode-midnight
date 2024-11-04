-- lua/xcode_midnight/init.lua
local M = {}

function M.setup()
  local colors = require("xcode_midnight.colors")

  -- Define highlights
  vim.cmd("highlight Normal        guifg=" .. colors.foreground .. " guibg=" .. colors.background)
  vim.cmd("highlight Comment       guifg=" .. colors.comment)
  vim.cmd("highlight String        guifg=" .. colors.string)
  vim.cmd("highlight Keyword       guifg=" .. colors.keyword)
  vim.cmd("highlight Number        guifg=" .. colors.number)
  vim.cmd("highlight Type          guifg=" .. colors.type_declaration)
  vim.cmd("highlight Function      guifg=" .. colors.function_name)
  vim.cmd("highlight Constant      guifg=" .. colors.constant)
  vim.cmd("highlight PreProc       guifg=" .. colors.preprocessor)
  vim.cmd("highlight Identifier    guifg=" .. colors.identifier)
end

return M
