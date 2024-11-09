-- Language-specific TreeSitter highlights
local colors = {
  type_declaration = "#4AA2F7",
  keyword = "#FF7AB2",
  constant = "#DE35A6",
  number = "#6AE0FE",
  string = "#00B1FF",
  instance_variable = "#333333",
  identifier = "#01FA95"
}

-- Modern highlight group definitions using vim.api
local function setup_highlights()
  -- General
  vim.api.nvim_set_hl(0, "@keyword", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@string", { fg = colors.string })
  vim.api.nvim_set_hl(0, "@constant", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@number", { fg = colors.number })
  vim.api.nvim_set_hl(0, "@type", { fg = colors.type_declaration })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.identifier })

  -- Ruby
  vim.api.nvim_set_hl(0, "@type.ruby", { fg = colors.type_declaration })
  vim.api.nvim_set_hl(0, "@keyword.ruby", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@constant.ruby", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@symbol.ruby", { fg = colors.number })
  vim.api.nvim_set_hl(0, "@string.ruby", { fg = colors.string })
  vim.api.nvim_set_hl(0, "@variable.ruby", { fg = colors.identifier })
  vim.api.nvim_set_hl(0, "@field.ruby", { bg = colors.instance_variable })

  -- HTML
  vim.api.nvim_set_hl(0, "@tag.html", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@tag.delimiter.html", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@tag.attribute.html", { fg = colors.identifier })

  -- ERB
  vim.api.nvim_set_hl(0, "@embed.ruby", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@keyword.erb", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@string.erb", { fg = colors.string })

  -- CSS
  vim.api.nvim_set_hl(0, "@property.css", { fg = colors.identifier })
  vim.api.nvim_set_hl(0, "@type.css", { fg = colors.type_declaration })
  vim.api.nvim_set_hl(0, "@number.css", { fg = colors.number })
  vim.api.nvim_set_hl(0, "@string.css", { fg = colors.string })
end

setup_highlights()