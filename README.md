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

   ```vim
   :colorscheme xcode_midnight
   ```

