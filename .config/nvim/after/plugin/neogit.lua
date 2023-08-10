local neogit = require('neogit')

neogit.setup {
    integrations = {
        diffview = true,
    },
    mappings = {
        finder = {
            ["<C-j>"] = "Next",
            ["<C-k>"] = "Previous"
        }
    }
}

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>')
