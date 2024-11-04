# Xcode Midnight Color Scheme for Neovim

This is a customizable Xcode Midnight-inspired color scheme for NeoVim, designed to work with LazyVim.

## Installation

1. Add this plugin to your LazyVim configuration:

   ```lua
   {
     "carlweis/nvim-xcode-midnight",
     config = function()
       require("xcode_midnight").setup()
       vim.cmd("colorscheme xcode_midnight")
     end
   }

2. OR Reload NeoVim, and set the colorscheme

   ```lua
     -- Set the colorscheme
    vim.cmd("colorscheme xcode_midnight")
   ```

## Customization

You can customize the terminal user interface by setting the following variables in your `init.lua`:

```lua
-- Customize UI elements using exposed colors
vim.cmd("highlight VertSplit     guifg=" .. XcodeMidnightColors.split .. " guibg=none")                    -- Vertical split line color
vim.cmd("highlight WinSeparator  guifg=" .. XcodeMidnightColors.split .. " guibg=none")                    -- Window separator for newer Neovim versions
vim.cmd("highlight CursorLineNr  guifg=" .. XcodeMidnightColors.foreground .. " guibg=" .. XcodeMidnightColors.background) -- Change current line number color
vim.cmd("highlight SignColumn    guifg=" .. XcodeMidnightColors.background .. " guibg=none")               -- Gutter background and foreground
vim.cmd("highlight TabLine       guifg=" .. XcodeMidnightColors.color2 .. " guibg=" .. XcodeMidnightColors.background)  -- Unselected tab color
vim.cmd("highlight TabLineSel    guifg=" .. XcodeMidnightColors.background .. " guibg=" .. XcodeMidnightColors.color2)  -- Selected tab color
vim.cmd("highlight TabLineFill   guibg=" .. XcodeMidnightColors.background)                                -- Background behind tabs
vim.cmd("highlight QuickFix      guibg=" .. XcodeMidnightColors.background)                                -- QuickFix window background
vim.cmd("highlight QuickFixLine  guibg=" .. XcodeMidnightColors.selection_background)                      -- QuickFix window selected line background`
```
