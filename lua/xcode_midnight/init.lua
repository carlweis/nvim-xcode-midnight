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

-- User Interface
vim.cmd("highlight VertSplit     guifg=" .. colors.split .. " guibg=none")                    -- Vertical split line color
vim.cmd("highlight WinSeparator  guifg=" .. colors.split .. " guibg=none")                    -- Window separator for newer Neovim versions
vim.cmd("highlight CursorLineNr  guifg=" .. colors.foreground .. " guibg=" .. colors.background) -- Change current line number color
vim.cmd("highlight SignColumn    guifg=" .. colors.background .. " guibg=none")               -- Gutter background and foreground
vim.cmd("highlight TabLine       guifg=" .. colors.color2 .. " guibg=" .. colors.background)  -- Unselected tab color
vim.cmd("highlight TabLineSel    guifg=" .. colors.background .. " guibg=" .. colors.color2)  -- Selected tab color
vim.cmd("highlight TabLineFill   guibg=" .. colors.background)                                -- Background behind tabs
vim.cmd("highlight QuickFix      guibg=" .. colors.background)                                -- QuickFix window background
vim.cmd("highlight QuickFixLine  guibg=" .. colors.selection_background)                      -- QuickFix window selected line background

return M
