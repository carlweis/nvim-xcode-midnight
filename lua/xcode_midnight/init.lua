-- lua/xcode_midnight/init.lua
local M = {}

function M.setup()
    local colors = require("xcode_midnight.colors")
    _G.XcodeMidnightColors = colors

    -- Basic editor highlights
    local highlights = {
        Normal = { fg = colors.foreground, bg = colors.background },
        Comment = { fg = colors.comment, italic = true },
        String = { fg = colors.string },
        Keyword = { fg = colors.keyword, bold = true },
        Number = { fg = colors.number },
        Type = { fg = colors.type },
        Function = { fg = colors.function_name },
        Constant = { fg = colors.constant },
        PreProc = { fg = colors.preprocessor },
        Identifier = { fg = colors.identifier },

        -- TreeSitter base
        ["@keyword"] = { fg = colors.keyword, bold = true },
        ["@function"] = { fg = colors.function_name },
        ["@string"] = { fg = colors.string },
        ["@type"] = { fg = colors.type },
        ["@variable"] = { fg = colors.variable },
        ["@constant"] = { fg = colors.constant },
        ["@comment"] = { fg = colors.comment, italic = true },
        ["@parameter"] = { fg = colors.identifier },

        -- Ruby
        ["@keyword.ruby"] = { fg = colors.keyword, bold = true },
        ["@function.ruby"] = { fg = colors.function_name },
        ["@string.ruby"] = { fg = colors.string },
        ["@constant.ruby"] = { fg = colors.constant },
        ["@variable.ruby"] = { fg = colors.variable },
        ["@symbol.ruby"] = { fg = colors.number },
        ["@field.ruby"] = { bg = colors.instance_variable },

        -- HTML/ERB
        ["@tag"] = { fg = colors.keyword },
        ["@tag.delimiter"] = { fg = colors.keyword },
        ["@tag.attribute"] = { fg = colors.identifier },
        ["@string.special"] = { fg = colors.string },
        ["@embedded.ruby"] = { fg = colors.keyword },

        -- CSS
        ["@property.css"] = { fg = colors.identifier },
        ["@type.css"] = { fg = colors.type },
        ["@number.css"] = { fg = colors.number },
        ["@string.css"] = { fg = colors.string }
    }

    -- Apply highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M