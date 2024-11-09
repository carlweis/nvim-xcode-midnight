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
vim.cmd("highlight link rubyClass guifg=" .. colors.type_declaration)
vim.cmd("highlight link rubyModule guifg=" .. colors.keyword)
vim.cmd("highlight link rubyConstant guifg=" .. colors.constant)
vim.cmd("highlight link rubySymbol guifg=" .. colors.number)
vim.cmd("highlight link rubyStringDelimiter guifg=" .. colors.string)
vim.cmd("highlight link rubyInstanceVariable guifg=" .. colors.instance_variable)

-- HTML
vim.cmd("highlight link htmlTag guifg=" .. colors.keyword)
vim.cmd("highlight link htmlEndTag guifg=" .. colors.keyword)
vim.cmd("highlight link htmlTagName guifg=" .. colors.type_declaration)
vim.cmd("highlight link htmlArg guifg=" .. colors.identifier)
vim.cmd("highlight link htmlLink guifg=" .. colors.string .. " gui=underline")

-- JavaScript
vim.cmd("highlight link jsFunction guifg=" .. colors.function_name)
vim.cmd("highlight link jsFuncName guifg=" .. colors.function_name)
vim.cmd("highlight link jsIdentifier guifg=" .. colors.identifier)
vim.cmd("highlight link jsBoolean guifg=" .. colors.constant)
vim.cmd("highlight link jsNumber guifg=" .. colors.number)
vim.cmd("highlight link jsString guifg=" .. colors.string)

-- Python
vim.cmd("highlight link pythonBuiltinFunc guifg=" .. colors.function_name)
vim.cmd("highlight link pythonClass guifg=" .. colors.type_declaration)
vim.cmd("highlight link pythonFunction guifg=" .. colors.function_name)
vim.cmd("highlight link pythonString guifg=" .. colors.string)
vim.cmd("highlight link pythonNumber guifg=" .. colors.number)
vim.cmd("highlight link pythonBoolean guifg=" .. colors.constant)

-- Slim (for embedded Ruby syntax)
vim.cmd("highlight link slimRubyClass guifg=" .. colors.type_declaration)
vim.cmd("highlight link slimRubyId guifg=" .. colors.identifier)
vim.cmd("highlight link slimRubyString guifg=" .. colors.string)
vim.cmd("highlight link slimRubyComment guifg=" .. colors.comment)
vim.cmd("highlight link slimRubySymbol guifg=" .. colors.number)

-- ERB
vim.cmd("highlight link erbTag guifg=" .. colors.keyword)
vim.cmd("highlight link erbDelimiter guifg=" .. colors.keyword)
vim.cmd("highlight link erbMethod guifg=" .. colors.function_name)
vim.cmd("highlight link erbComment guifg=" .. colors.comment)
vim.cmd("highlight link erbString guifg=" .. colors.string)

-- React (JSX)
vim.cmd("highlight link jsxTag guifg=" .. colors.keyword)
vim.cmd("highlight link jsxComponentName guifg=" .. colors.type_declaration)
vim.cmd("highlight link jsxAttrib guifg=" .. colors.identifier)
vim.cmd("highlight link jsxString guifg=" .. colors.string)
vim.cmd("highlight link jsxExpression guifg=" .. colors.foreground)

return colors
