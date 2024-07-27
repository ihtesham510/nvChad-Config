require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- exit insert mode
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

-- save and quit
map("n", "<leader>w", "<cmd>w<cr>" , { desc = "Save File" })
map("n", "<leader>q", "<cmd>qa<cr>" , { desc = "Save and Exit" })

-- for plane split
map("n", "sl", "<cmd>vsplit<cr>", {desc="split vertical"})
map("n", "sj", "<cmd>split<cr>", {desc="split horizontal"})

-- copy and delete files
map("n", "<C-c>", "<cmd>%y+<cr>", {desc="Copy File"})
map("n", "<C-d>", "<cmd>%d+<cr>", {desc="Delete File"})
-- no highlight
map("n", "<F2>", "<cmd>noh<cr>", {desc="no highlight"})
-- for moving lines up ad 
map("x", "J", ":m '>+1<CR>gv=gv")
map("x", "K", ":m '<-2<CR>gv=gv")
-- resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
-- for intend
map("v", "<", "<gv^")
map("n", "<", "<gv^")
map("v", ">", ">gv^")
map("n", ">", ">gv^")

local nomap = vim.keymap.del

nomap("i", "<C-k>")
nomap("n", "<C-k>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
