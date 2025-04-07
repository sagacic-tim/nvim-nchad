return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  "nvim-lua/plenary.nvim",

  { "nvim-tree/nvim-web-devicons", lazy = true },

  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },

  {
    "echasnovski/mini.nvim",
    lazy = true,
    config = function()
      require("mini.icons")  -- Ensure this loads the icons module
    end
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("configs.toggleterm")  -- Your configuration file
    end,
    keys = { "<C-\\>" },  -- This will load the plugin when you press Ctrl + \
  },

  {
    "nvim-treesitter/nvim-treesitter",  -- The plugin
    run = ":TSUpdate",  -- Command to update parsers after installation
    config = function()
      require("plugins.nvim-treesitter")  -- Load your treesitter configuration
    end,
    -- Optionally, you can specify any lazy loading conditions here
  },

  {
    "nvim-treesitter/playground",
    cmd = "TSPlaygroundToggle", -- This will load the plugin lazily when the command is run
  },

  "nvchad/volt",

  -- optional, needed for theme switcher
 -- or just use Telescope themes

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
