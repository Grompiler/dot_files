local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>*', builtin.grep_string, {})

-- Buffer
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})

-- Errors
vim.keymap.set('n', '<leader>el', function() builtin.diagnostics { bufnr = 0 } end, {})

-- File
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})


-- Marks
vim.keymap.set('n', '<leader>ml', builtin.marks, {})

local actions = require "telescope.actions"
require("telescope").setup {
    defaults = {
        vimgrep_arguments = {
            'rg',
        },
        mappings = {
            i = {
                ["<Tab>"] = actions.select_default,
                ["<S-Tab>"] = false,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
            },
            n = {
                ["<Tab>"] = actions.select_default,
                ["<S-Tab>"] = false,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["m"] = actions.toggle_selection,
                ["_"] = actions.select_horizontal,
                ["/"] = actions.select_vertical,
            }
        },
    },
    pickers = {
        buffers = {
            mappings = {
                n = {
                    ["dd"] = actions.delete_buffer,
                }
            }
        }
    }
}

require("telescope").load_extension "file_browser"
vim.api.nvim_set_keymap(
    "n",
    "<leader>.",
    "<cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>",
    { noremap = true }
)

require('telescope').load_extension "project"
vim.api.nvim_set_keymap(
    'n',
    '<leader>pp',
    "<cmd>lua require'telescope'.extensions.project.project{}<CR>",
    { noremap = true, silent = true }
)
