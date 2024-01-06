vim.keymap.set("n", "<leader>gg", "<cmd>vert Git<cr>")
vim.keymap.set("n", "<leader>gd", "<cmd>Gvdiff<cr>")
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<cr>")

local autocmd = vim.api.nvim_create_autocmd
autocmd("FileType", {
    pattern = "fugitive",
    callback = function()
        vim.keymap.set({ "n", "v" }, "f", "<cmd>Git fetch|echo '> git fetched'<cr>")
        vim.keymap.set({ "n", "v" }, "F", "<cmd>Git pull|echo '> git pulled'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>bb", "<cmd>Git branch -a|echo '> git branch all'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>ll", "<cmd>Git log --graph|echo '> git log graph'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>zp", "<cmd>Git stash push|echo '> git stash push'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>zP", "<cmd>Git stash pop|echo '> git stash pop'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>zD", "<cmd>Git stash drop|echo '> git stash drop'<cr>")
        vim.keymap.set({ "n", "v" }, "<leader>zl", "<cmd>Git stash list|echo '> git stash list'<cr>")
    end,
})
