vim.g.mapleader = " "
vim.keymap.set({ "n", "v", "i", "t", "s", "x", "o" }, "<C-z>", "<nop>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set({ "n", "v" }, "<Esc>", "<cmd>nohlsearch<cr>")

vim.keymap.set({ "i" }, "<C-h>", "<Left>")
vim.keymap.set({ "i" }, "<C-l>", "<Right>")
vim.keymap.set({ "i" }, "<C-k>", "<Up>")
vim.keymap.set({ "i" }, "<C-j>", "<Down>")
vim.keymap.set({ "n", "v" }, "<C-h>", "^")
vim.keymap.set({ "n", "v" }, "<C-l>", "$")
vim.keymap.set({ "n", "v" }, "<C-k>", "Hzz")
vim.keymap.set({ "n", "v" }, "<C-j>", "Lzz")
vim.keymap.set({ "n", "v" }, "<C-i>", "<C-i>zz")
vim.keymap.set({ "n", "v" }, "<C-o>", "<C-o>zz")
vim.keymap.set({ "n", "v" }, "n", "nzz")
vim.keymap.set({ "n", "v" }, "N", "Nzz")
vim.keymap.set({ "n", "v" }, "*", "*zz")
vim.keymap.set({ "n", "v" }, "#", "#zz")
vim.keymap.set({ "n", "v" }, "G", "Gzz")

vim.keymap.set("x", "P", "\"_dP")

vim.keymap.set({ "n", "v" }, "<leader><Tab>", "<cmd>b#<cr>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("v", "<Esc>", "<C-c>")
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>")



-- Buffer
vim.keymap.set({ "n", "v" }, "<leader>bk", "<cmd>bw<cr>", { desc = "Buffer Kill" })
vim.keymap.set({ "n", "v" }, "<leader>bn", "<cmd>bn<cr>", { desc = "Buffer Next" })
vim.keymap.set({ "n", "v" }, "<leader>bp", "<cmd>bp<cr>", { desc = "Buffer Previous" })
vim.keymap.set({ "n", "v" }, "<leader>bs", "<cmd>vsplit scratch<cr>", { desc = "Buffer Scratch" })

-- Cargo
vim.keymap.set("n", "<leader>cb", "<cmd>vsplit | terminal cargo build --release<cr>", { desc = "Cargo Build release" })
vim.keymap.set("n", "<leader>cc", "<cmd>vsplit | terminal cargo build<cr>", { desc = "Cargo Build (Compile)" })
vim.keymap.set("n", "<leader>cr", "<cmd>vsplit | terminal cargo run<cr>", { desc = "Cargo Run" })
vim.keymap.set("n", "<leader>ct", "<cmd>vsplit | terminal cargo test<cr>", { desc = "Cargo Test" })
vim.keymap.set("n", "<leader>ck", "<cmd>vsplit | terminal cargo check<cr>", { desc = "Cargo check" })
vim.keymap.set("n", "<leader>cK", "<cmd>vsplit | terminal cargo clippy<cr>", { desc = "Cargo clippy check" })
vim.keymap.set("n", "<leader>ce", "<cmd>vsplit | terminal cargo expand<cr>", { desc = "Cargo Expand" })

-- Errors
vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = "Error Next" })
vim.keymap.set('n', '<leader>ep', vim.diagnostic.goto_prev, { desc = "Error Previous" })

-- File
vim.keymap.set({ "n", "v" }, "<leader>fs", "<cmd>wa<cr>", { desc = "File Save" })

-- Help
vim.keymap.set('n', '<leader>hh', "<cmd>Telescope help_tags<cr>", { desc = "Action Help" })

-- Kill
vim.keymap.set({ "n", "v" }, "<leader>kk", "<cmd>bw!<cr>", { desc = "Kill!" })

-- LSP
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = "LSP Rename" })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "LSP Format" })
vim.keymap.set('n', '<leader>lq', "<cmd>LspRestart<cr>", { desc = "LSP Quit (LspRestart)" })

-- Open
vim.keymap.set({ "n", "v" }, "<leader>ot", "<cmd>vsplit | terminal<cr>", { desc = "Open Terminal" })
vim.keymap.set({ "n", "v" }, "<leader>oT", "<cmd>terminal<cr>", { desc = "Open Terminal here" })

-- Project
vim.keymap.set({ "n" }, "<leader>pr", "<cmd>cd %:p:h<cr>", { desc = "Project Root" })

-- Window
vim.keymap.set("n", "+", "<C-w>>", { desc = "Increase Window size" })
vim.keymap.set("n", "-", "<C-w><", { desc = "Decrease Window size" })
vim.keymap.set({ "n", "v" }, "<leader>wd", "<cmd>close<cr>", { desc = "Window Close" })
vim.keymap.set({ "n", "v" }, "<leader>wl", "<C-w>l", { desc = "Window left" })
vim.keymap.set({ "n", "v" }, "<leader>wh", "<C-w>h", { desc = "Window right" })
vim.keymap.set({ "n", "v" }, "<leader>wj", "<C-w>j", { desc = "Window down" })
vim.keymap.set({ "n", "v" }, "<leader>wk", "<C-w>k", { desc = "Window up" })
vim.keymap.set({ "n", "v" }, "<leader>wm", "<C-w>|<C-w>_", { desc = "Window maximize" })
vim.keymap.set({ "n", "v" }, "<leader>wM", "<C-w>o", { desc = "Window Maximize" })
vim.keymap.set({ "n", "v" }, "<leader>w/", "<cmd>vsplit<cr>", { desc = "Window split vertically" })
vim.keymap.set({ "n", "v" }, "<leader>w_", "<cmd>split<cr>", { desc = "Window split horizontally" })
vim.keymap.set({ "n", "v" }, "<leader>w=", "<C-w>=", { desc = "Equalize Window size" })
