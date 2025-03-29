
-- ~/.config/nvim/lua/configs/ui.lua

-- Example: Override NVChad default UI settings

require("nvchad.ui.statusline").setup({
  sections = {
    left = {
      "mode", "filetype", "branch", "filename"
    },
    right = {
      "lineinfo", "percent", "fileformat", "encoding"
    }
  }
})
