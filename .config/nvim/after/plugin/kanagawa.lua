require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    undercurl = false,
})

vim.api.nvim_set_hl(0, "LineNr", { fg = "#54546d", bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = false })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = false })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = false })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = false })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { undercurl = false })
vim.cmd("colorscheme kanagawa")
