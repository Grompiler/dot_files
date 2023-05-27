vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set({"n", "v"}, "U", "<C-r>")
vim.keymap.set({"n", "v"}, "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set({"n", "v"}, "<C-h>", "^")
vim.keymap.set({"n", "v"}, "<C-l>", "$")
vim.keymap.set({"n", "v"}, "<C-k>", "Hzz")
vim.keymap.set({"n", "v"}, "<C-j>", "Lzz")
vim.keymap.set({"n", "v"}, "n", "nzz")
vim.keymap.set({"n", "v"}, "N", "Nzz")
vim.keymap.set({"n", "v"}, "*", "*zz")
vim.keymap.set({"n", "v"}, "#", "#zz")

vim.keymap.set("v", "P", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader><Tab>", "<cmd>b#<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("v", "<Esc>", "<C-c>")


-- Buffer
vim.keymap.set({"n", "v"}, "<leader>bk", "<cmd>bw<cr>")
vim.keymap.set({"n", "v"}, "<leader>bn", "<cmd>bn<cr>")
vim.keymap.set({"n", "v"}, "<leader>bp", "<cmd>bp<cr>")
vim.keymap.set({"n", "v"}, "<leader>bx", "<cmd>vsplit scratch<cr>")

-- File
vim.keymap.set({"n", "v"}, "<leader>fs", "<cmd>w<cr>")

-- Kill
vim.keymap.set({"n", "v"}, "<leader>kk", "<cmd>bw<cr>")
vim.keymap.set({"n", "v"}, "<leader>kK", "<cmd>bw!<cr>")

-- Open
vim.keymap.set({"n", "v"}, "<leader>ot", "<cmd>vsplit | terminal<cr>")
vim.keymap.set({"n", "v"}, "<leader>oT", "<cmd>terminal<cr>")

-- Window
vim.keymap.set({"n", "v"}, "<leader>wd", "<cmd>close<cr>")
vim.keymap.set({"n", "v"}, "<leader>wl", "<C-w>l")
vim.keymap.set({"n", "v"}, "<leader>wh", "<C-w>h")
vim.keymap.set({"n", "v"}, "<leader>wj", "<C-w>j")
vim.keymap.set({"n", "v"}, "<leader>wk", "<C-w>k")
vim.keymap.set({"n", "v"}, "<leader>w/", "<cmd>vsplit<cr>")
vim.keymap.set({"n", "v"}, "<leader>w_", "<cmd>split<cr>")
