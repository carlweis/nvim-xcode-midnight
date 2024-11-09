-- colors/xcode_midnight.lua
local colors = require("xcode_midnight.colors")

-- Define the colorscheme
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "xcode_midnight"

-- Set highlights using color definitions
vim.cmd("highlight Normal guifg=" .. colors.foreground .. " guibg=" .. colors.background)
vim.cmd("highlight Comment guifg=" .. colors.comment)
vim.cmd("highlight String guifg=" .. colors.string)
vim.cmd("highlight Keyword guifg=" .. colors.keyword)
vim.cmd("highlight Number guifg=" .. colors.number)
vim.cmd("highlight Type guifg=" .. colors.type_declaration)
vim.cmd("highlight Function guifg=" .. colors.function_name)
vim.cmd("highlight Constant guifg=" .. colors.constant)
vim.cmd("highlight PreProc guifg=" .. colors.preprocessor)
vim.cmd("highlight Identifier guifg=" .. colors.identifier)

-- Tree-sitter highlights
vim.cmd("highlight @comment guifg=" .. colors.comment)
vim.cmd("highlight @string guifg=" .. colors.string)
vim.cmd("highlight @keyword guifg=" .. colors.keyword)
vim.cmd("highlight @number guifg=" .. colors.number)
vim.cmd("highlight @type guifg=" .. colors.type_declaration)
vim.cmd("highlight @function guifg=" .. colors.function_name)
vim.cmd("highlight @constant guifg=" .. colors.constant)
vim.cmd("highlight @variable guifg=" .. colors.identifier)
