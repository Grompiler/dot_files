local hop = require('hop')
hop.setup({ keys = 'asdfjkl;' })

vim.keymap.set({ 'n', 'x' }, 's', function()
    hop.hint_char1({ current_line_only = false })
end, { remap = true })

vim.keymap.set({ 'n', 'x' }, '?', function()
    hop.hint_patterns({ current_line_only = false })
end, { remap = true })
