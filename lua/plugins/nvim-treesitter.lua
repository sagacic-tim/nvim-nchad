-- ~/.config/nvim/lua/plugins/nvim-treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",  -- The plugin repository
  run = ":TSUpdate",  -- Command to update parsers after installation
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {
        "lua", "python", "go", "ruby", "php", "tsx", "css", "html", "javascript", "typescript"},
      highlight = {
        enable = true,  -- Enable syntax highlighting
        additional_vim_regex_highlighting = false,  -- Disable vim's default highlighting
      },
      indent = {
        enable = true,  -- Enable indentation
      },
      autotag = {
        enable = true,  -- Enable auto-closing HTML tags
      },
      playground = {
        enable = true,  -- Enable the playground feature
        updatetime = 25,  -- Set the update time for highlighting updates
        persist_queries = false,  -- Whether to persist queries across sessions
      },
    }
  end,
}
