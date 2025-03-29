require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Key mappings for opening terminals in different layouts (Ctrl+1, Ctrl+2, Ctrl+3)
vim.api.nvim_set_keymap('n', '<C-1>', '<cmd>ToggleTerm direction=vertical<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-2>', '<cmd>ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-3>', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true })
--
-- -- Optionally, set the default open mapping for ToggleTerm if not already set
-- vim.api.nvim_set_keymap('n', '<C-\\>', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
