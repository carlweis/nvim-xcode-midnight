-- colors/xcode_midnight.lua

local colors = require("xcode_midnight.colors")

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "xcode_midnight"

-- General highlights
vim.cmd("highlight Normal guifg=" .. colors.foreground .. " guibg=" .. colors.background)
vim.cmd("highlight Comment guifg=" .. colors.comment)
vim.cmd("highlight String guifg=" .. colors.string)
vim.cmd("highlight Keyword guifg=" .. colors.keyword)
vim.cmd("highlight Number guifg=" .. colors.number)
vim.cmd("highlight Constant guifg=" .. colors.constant)

-- HTML
vim.cmd("highlight htmlTag guifg=" .. colors.html_tag)
vim.cmd("highlight htmlEndTag guifg=" .. colors.html_tag)
vim.cmd("highlight htmlArg guifg=" .. colors.html_attribute)
vim.cmd("highlight htmlString guifg=" .. colors.html_value)

-- CSS
vim.cmd("highlight cssSelectorOp guifg=" .. colors.css_selector)
vim.cmd("highlight cssIdentifier guifg=" .. colors.css_id)
vim.cmd("highlight cssClassName guifg=" .. colors.css_class)
vim.cmd("highlight cssProp guifg=" .. colors.css_property)
vim.cmd("highlight cssAttr guifg=" .. colors.css_value)

-- JavaScript
vim.cmd("highlight javascriptFunction guifg=" .. colors.js_function)
vim.cmd("highlight javascriptIdentifier guifg=" .. colors.js_variable)
vim.cmd("highlight javascriptReserved guifg=" .. colors.js_keyword)
vim.cmd("highlight javascriptLabel guifg=" .. colors.js_variable)

-- JSX
vim.cmd("highlight jsxComponentName guifg=" .. colors.jsx_component)
vim.cmd("highlight jsxTag guifg=" .. colors.jsx_tag)
vim.cmd("highlight jsxAttrib guifg=" .. colors.jsx_attribute)

-- Ruby
vim.cmd("highlight rubyMethodName guifg=" .. colors.ruby_method)
vim.cmd("highlight rubySymbol guifg=" .. colors.ruby_symbol)
vim.cmd("highlight rubyKeyword guifg=" .. colors.ruby_keyword)

-- ERB
vim.cmd("highlight erbTag guifg=" .. colors.erb_tag)
vim.cmd("highlight erbDelimiter guifg=" .. colors.erb_delimiter)

-- Slim
vim.cmd("highlight slimTag guifg=" .. colors.slim_tag)
vim.cmd("highlight slimAttribute guifg=" .. colors.slim_attribute)
vim.cmd("highlight slimDelimiter guifg=" .. colors.slim_delimiter)

-- Python
vim.cmd("highlight pythonFunction guifg=" .. colors.python_function)
vim.cmd("highlight pythonBuiltin guifg=" .. colors.python_builtin)
vim.cmd("highlight pythonKeyword guifg=" .. colors.python_keyword)

-- SQL
vim.cmd("highlight sqlKeyword guifg=" .. colors.sql_keyword)
vim.cmd("highlight sqlFunction guifg=" .. colors.sql_function)
vim.cmd("highlight sqlIdentifier guifg=" .. colors.sql_identifier)
