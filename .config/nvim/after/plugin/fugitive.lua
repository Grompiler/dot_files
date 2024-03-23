vim.keymap.set({ "n", "v" }, "<leader>gg", "<cmd>vert Git<cr>")
vim.keymap.set("n", "<leader>gdd", "<cmd>Gvdiff<cr>")
vim.keymap.set("n", "<leader>gmm", "<cmd>Gvdiff!<cr>")
vim.keymap.set("n", "<leader>gmh", "<cmd>diffget //2<cr>")
vim.keymap.set("n", "<leader>gml", "<cmd>diffget //3<cr>")
vim.keymap.set("n", "<leader>gM", "<cmd>Git blame<cr>")

vim.keymap.set({ "n", "v" }, "<leader>gf", "<cmd>Git fetch|echo '> git fetched'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gF", "<cmd>Git pull|echo '> git pulled'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gp", "<cmd>Git push|echo '> git pushed'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gP", "<cmd>Git push --force|echo '> git forced push'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gba", "<cmd>vert Git branch --all --verbose|echo '> git branch all'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gll",
    "<cmd>vert Git log --decorate --graph --name-only|echo '> git log graph'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gla",
    "<cmd>vert Git log --decorate --graph --all --name-only|echo '> git log all graph'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>glr",
    "<cmd>vert Git log --decorate --graph --name-only --max-count=50|echo '> git log recent graph'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>glR",
    "<cmd>vert Git log --decorate --graph --all --name-only --max-count=50|echo '> git log all recent graph'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>grl", "<cmd>vert Git reflog|echo '> git reflog'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gzp", "<cmd>Git stash push|echo '> git stash push'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gzP", "<cmd>Git stash pop|echo '> git stash pop'<cr>")
vim.keymap.set({ "n", "v" }, "<leader>gzD", "<cmd>Git stash drop|echo '> git stash drop'<cr>")
