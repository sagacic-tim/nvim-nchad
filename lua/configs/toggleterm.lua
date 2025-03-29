-- ~/.config/nvim/lua/configs/toggleterm.lua

require("toggleterm").setup({
  -- size can be a number or a function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15  -- Set the size for horizontal terminal
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4  -- Set the terminal size to 40% of the window width for vertical
    end
  end,

  -- Open terminal mappings
  open_mapping = [[<C-\>]],  -- Default keybinding for opening the terminal (Ctrl + \)

  -- Apply terminal mappings in insert mode
  insert_mappings = true,
  terminal_mappings = true,

  -- Autocmd hooks for terminal creation, opening, and closing
  -- These are commented out for now as placeholders
  -- on_create = function(t) print("Terminal created") end,
  -- on_open = function(t) print("Terminal opened") end,
  -- on_close = function(t) print("Terminal closed") end,

  -- Callback functions for processing terminal output (optional)
  -- These are also commented out for now
  -- on_stdout = function(t, job, data, name)
  --   print("Received stdout data")
  -- end,
  -- on_stderr = function(t, job, data, name)
  --   print("Received stderr data")
  -- end,
  -- on_exit = function(t, job, exit_code, name)
  --   print("Terminal exited with code: " .. exit_code)
  -- end,

  -- Disable numbers in terminal window
  hide_numbers = true,

  -- Terminal highlight group customizations
  highlights = {
    Normal = {
      guibg = "#1e1e1e",  -- Set a custom background color for the terminal
    },
    NormalFloat = {
      link = 'Normal',
    },
    FloatBorder = {
      guifg = "#ffffff",  -- Set custom border color
      guibg = "#1e1e1e",  -- Set custom background color for the floating terminal window
    },
  },

  -- Enable shading for terminals with a specific shading factor
  shade_terminals = true,
  shading_factor = -30,  -- Darken the terminal background by 30%

  -- Open terminal in insert mode by default
  start_in_insert = true,

  -- Keep terminal size persistent across sessions
  persist_size = true,

  -- Default terminal direction
  direction = 'float',  -- Open terminal as a floating window by default

  -- Close the terminal window when the process exits
  close_on_exit = true,

  -- Floating window options
  float_opts = {
    border = 'single',  -- Floating terminal border style
    width = 100,        -- Width of the floating terminal
    height = 20,        -- Height of the floating terminal
    row = 5,            -- Row position of the floating terminal
    col = 20,           -- Column position of the floating terminal
    winblend = 3,       -- Transparency level for the floating terminal
    zindex = 10,        -- Z-index for the floating window
    title_pos = 'left', -- Position the title of the floating terminal window
  },

  -- Automatically scroll terminal output to the bottom
  auto_scroll = true,

  -- Responsiveness: Stack terminals vertically when the window width is too narrow
  responsiveness = {
    horizontal_breakpoint = 135,  -- Stack terminals if window width < 135 columns
  },
})
