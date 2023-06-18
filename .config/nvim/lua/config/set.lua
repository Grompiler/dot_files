vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 16
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50
vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*" },
    command = "normal zx zR",
})
