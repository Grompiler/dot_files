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

-- Set proper options for every new buffer, see :verb set formatoptions
vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
