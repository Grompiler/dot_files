local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
vim.keymap.set('n', '<leader>*', builtin.grep_string, {})

-- Buffer
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})

-- File
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})

local actions = require "telescope.actions"
require("telescope").setup {
  pickers = {
    buffers = {
      mappings = {
        i = {
            -- Broken
            -- ["<C-k>"] = actions.move_selection_next,
            -- ["<C-j>"] = actions.move_selection_previous,
        },
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
   {noremap = true}
)

require('telescope').load_extension "project"
vim.api.nvim_set_keymap(
        'n',
        '<leader>pp',
        "<cmd>lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)
