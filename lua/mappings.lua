require "nvchad.mappings"

-- Load your custom comment functions
local comments = require("configs.comments")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Key mappings for opening terminals in different layouts (Ctrl+1, Ctrl+2, Ctrl+3)
vim.api.nvim_set_keymap('n', '<C-1>', '<cmd>ToggleTerm direction=vertical<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-2>', '<cmd>ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-3>', '<cmd>ToggleTerm direction=float<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<cmd>TSPlaygroundToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>./', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>.,', ':tabprev<CR>', { noremap = true, silent = true })

-- Create user commands and key mappings for commenting
vim.api.nvim_create_user_command("CommentOut", comments.comment_out, { range = true })
vim.keymap.set("v", "<leader>co", ":CommentOut<CR>")
vim.keymap.set("n", "<leader>co", ":CommentOut<CR>")

vim.api.nvim_create_user_command("Uncomment", comments.uncomment, { range = true })
vim.keymap.set("v", "<leader>uc", ":Uncomment<CR>")
vim.keymap.set("n", "<leader>uc", ":Uncomment<CR>")

-- Yank to clipboard in normal and visual modes:
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+y$', { desc = "Yank until EOL to clipboard" })

vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true, desc = "Paste from clipboard" })
