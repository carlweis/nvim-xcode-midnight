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

-- Language-specific highlights with linking

-- Ruby
vim.cmd("highlight link rubyClass Type")
vim.cmd("highlight link rubyModule Keyword")
vim.cmd("highlight link rubyConstant Constant")
vim.cmd("highlight link rubySymbol Number")
vim.cmd("highlight link rubyStringDelimiter String")
vim.cmd("highlight link rubyInstanceVariable Identifier")

-- HTML
vim.cmd("highlight link htmlTag Keyword")
vim.cmd("highlight link htmlEndTag Keyword")
vim.cmd("highlight link htmlTagName Type")
vim.cmd("highlight link htmlArg Identifier")
vim.cmd("highlight link htmlLink String")
vim.cmd("highlight htmlLink gui=underline")  -- Additional styling for links

-- JavaScript
vim.cmd("highlight link jsFunction Function")
vim.cmd("highlight link jsFuncName Function")
vim.cmd("highlight link jsIdentifier Identifier")
vim.cmd("highlight link jsBoolean Constant")
vim.cmd("highlight link jsNumber Number")
vim.cmd("highlight link jsString String")

-- Python
vim.cmd("highlight link pythonBuiltinFunc Function")
vim.cmd("highlight link pythonClass Type")
vim.cmd("highlight link pythonFunction Function")
vim.cmd("highlight link pythonString String")
vim.cmd("highlight link pythonNumber Number")
vim.cmd("highlight link pythonBoolean Constant")

-- Slim (for embedded Ruby syntax)
vim.cmd("highlight link slimRubyClass Type")
vim.cmd("highlight link slimRubyId Identifier")
vim.cmd("highlight link slimRubyString String")
vim.cmd("highlight link slimRubyComment Comment")
vim.cmd("highlight link slimRubySymbol Number")

-- ERB
vim.cmd("highlight link erbTag Keyword")
vim.cmd("highlight link erbDelimiter Keyword")
vim.cmd("highlight link erbMethod Function")
vim.cmd("highlight link erbComment Comment")
vim.cmd("highlight link erbString String")

-- React (JSX)
vim.cmd("highlight link jsxTag Keyword")
vim.cmd("highlight link jsxComponentName Type")
vim.cmd("highlight link jsxAttrib Identifier")
vim.cmd("highlight link jsxString String")
vim.cmd("highlight link jsxExpression Normal")

return colors

