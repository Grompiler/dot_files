local neogit = require('neogit')

neogit.setup {
    use_magit_keybindings = true,
    integrations = {
        diffview = true,
    },
}

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>')
