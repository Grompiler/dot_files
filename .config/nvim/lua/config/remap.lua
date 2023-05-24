vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set({"n", "v", "t"}, "U", "<C-r>")



vim.keymap.set({"n", "v", "t"}, "<C-h>", "^")
vim.keymap.set({"n", "v", "t"}, "<C-l>", "$")
vim.keymap.set({"n", "v", "t"}, "<C-k>", "Hzz")
vim.keymap.set({"n", "v", "t"}, "<C-j>", "Lzz")
vim.keymap.set({"n", "v", "t"}, "n", "nzz")
vim.keymap.set({"n", "v", "t"}, "N", "Nzz")

vim.keymap.set("v", "P", "\"_dP")


