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

-- Language-specific highlights

-- Ruby
vim.cmd("highlight rubyClass guifg=" .. colors.type_declaration)
vim.cmd("highlight rubyModule guifg=" .. colors.keyword)
vim.cmd("highlight rubyConstant guifg=" .. colors.constant)
vim.cmd("highlight rubySymbol guifg=" .. colors.number)
vim.cmd("highlight rubyStringDelimiter guifg=" .. colors.string)
vim.cmd("highlight link rubyInstanceVariable guibg=" .. colors.instance_variable)

-- HTML
vim.cmd("highlight htmlTag guifg=" .. colors.keyword)
vim.cmd("highlight htmlEndTag guifg=" .. colors.keyword)
vim.cmd("highlight htmlTagName guifg=" .. colors.type_declaration)
vim.cmd("highlight htmlArg guifg=" .. colors.identifier)
vim.cmd("highlight htmlLink guifg=" .. colors.string .. " gui=underline")

-- JavaScript
vim.cmd("highlight jsFunction guifg=" .. colors.function_name)
vim.cmd("highlight jsFuncName guifg=" .. colors.function_name)
vim.cmd("highlight jsIdentifier guifg=" .. colors.identifier)
vim.cmd("highlight jsBoolean guifg=" .. colors.constant)
vim.cmd("highlight jsNumber guifg=" .. colors.number)
vim.cmd("highlight jsString guifg=" .. colors.string)

-- Python
vim.cmd("highlight pythonBuiltinFunc guifg=" .. colors.function_name)
vim.cmd("highlight pythonClass guifg=" .. colors.type_declaration)
vim.cmd("highlight pythonFunction guifg=" .. colors.function_name)
vim.cmd("highlight pythonString guifg=" .. colors.string)
vim.cmd("highlight pythonNumber guifg=" .. colors.number)
vim.cmd("highlight pythonBoolean guifg=" .. colors.constant)

-- Slim (for embedded Ruby syntax)
vim.cmd("highlight slimRubyClass guifg=" .. colors.type_declaration)
vim.cmd("highlight slimRubyId guifg=" .. colors.identifier)
vim.cmd("highlight slimRubyString guifg=" .. colors.string)
vim.cmd("highlight slimRubyComment guifg=" .. colors.comment)
vim.cmd("highlight slimRubySymbol guifg=" .. colors.number)

-- ERB
vim.cmd("highlight erbTag guifg=" .. colors.keyword)
vim.cmd("highlight erbDelimiter guifg=" .. colors.keyword)
vim.cmd("highlight erbMethod guifg=" .. colors.function_name)
vim.cmd("highlight erbComment guifg=" .. colors.comment)
vim.cmd("highlight erbString guifg=" .. colors.string)

-- React (JSX)
vim.cmd("highlight jsxTag guifg=" .. colors.keyword)
vim.cmd("highlight jsxComponentName guifg=" .. colors.type_declaration)
vim.cmd("highlight jsxAttrib guifg=" .. colors.identifier)
vim.cmd("highlight jsxString guifg=" .. colors.string)
vim.cmd("highlight jsxExpression guifg=" .. colors.foreground)

return colors
