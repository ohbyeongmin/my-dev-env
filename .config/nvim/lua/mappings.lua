require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" })

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "sh", "<cmd>:vertical resize -5<CR>")
map("n", "sk", "<cmd>:resize -5<CR>")
map("n", "sj", "<cmd>:resize +5<CR>")
map("n", "sl", "<cmd>:vertical resize +5<CR>")

map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
