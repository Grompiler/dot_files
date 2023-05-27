vim.g.mapleader = " "

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set({ "n", "v" }, "U", "<C-r>")
vim.keymap.set({ "n", "v" }, "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set({ "n", "v" }, "<C-h>", "^")
vim.keymap.set({ "n", "v" }, "<C-l>", "$")
vim.keymap.set({ "n", "v" }, "<C-k>", "Hzz")
vim.keymap.set({ "n", "v" }, "<C-j>", "Lzz")
vim.keymap.set({ "n", "v" }, "n", "nzz")
vim.keymap.set({ "n", "v" }, "N", "Nzz")
vim.keymap.set({ "n", "v" }, "*", "*zz")
vim.keymap.set({ "n", "v" }, "#", "#zz")

vim.keymap.set("v", "P", "\"_dP")

vim.keymap.set({ "n", "v" }, "<leader><Tab>", "<cmd>b#<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("v", "<Esc>", "<C-c>")


-- Buffer
vim.keymap.set({ "n", "v" }, "<leader>bk", "<cmd>bw<cr>", { desc = "Buffer Kill" })
vim.keymap.set({ "n", "v" }, "<leader>bn", "<cmd>bn<cr>", { desc = "Buffer Next" })
vim.keymap.set({ "n", "v" }, "<leader>bp", "<cmd>bp<cr>", { desc = "Buffer Previous" })
vim.keymap.set({ "n", "v" }, "<leader>bs", "<cmd>vsplit scratch<cr>", { desc = "Buffer Scratch" })

-- Errors
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = "Error Next" })
vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev, { desc = "Error Previous" })

-- File
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>w<cr>", { desc = "File Save" })

-- Kill
vim.keymap.set({ "n", "v" }, "<leader>kk", "<cmd>bw<cr>", { desc = "Kill" })
vim.keymap.set({ "n", "v" }, "<leader>kK", "<cmd>bw!<cr>", { desc = "Kill !" })

-- Open
vim.keymap.set({ "n", "v" }, "<leader>ot", "<cmd>vsplit | terminal<cr>", { desc = "Open Terminal" })
vim.keymap.set({ "n", "v" }, "<leader>oT", "<cmd>terminal<cr>", { desc = "Open Terminal here" })

-- Window
vim.keymap.set({ "n", "v" }, "<leader>wd", "<cmd>close<cr>", { desc = "Window Close" })
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "Window left" })
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h", { desc = "Window right" })
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j", { desc = "Window down" })
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k", { desc = "Window up" })
vim.keymap.set({ "n", "v" }, "<leader>w/", "<cmd>vsplit<cr>", { desc = "Window split vertically" })
vim.keymap.set({ "n", "v" }, "<leader>w_", "<cmd>split<cr>", { desc = "Window split horizontally" })
