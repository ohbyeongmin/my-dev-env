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

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- golang
map("n", "<leader>dus", function ()
  local widgets = require('dap.ui.widgets');
  local sidebar = widgets.sidebar(widgets.scopes);
  sidebar.open();
end, { desc = "Open debugging sidebar"})

map("n", "<leader>dgt", function ()
  require('dap-go').debug_test()
end, { desc = "Debug go test"})

map("n", "<leader>dgl", function ()
  require('dap-go').debug_last()
end, { desc = "Debug last go test"})

map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags"})

map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add yaml struct tags"})
