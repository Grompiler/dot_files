local neogit = require('neogit')

neogit.setup {
    integrations = {
        telescope = true,
        diffview = true,
    },
}

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>')
