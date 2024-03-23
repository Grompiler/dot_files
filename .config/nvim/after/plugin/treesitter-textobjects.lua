require('nvim-treesitter.configs').setup({
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                ["aa"] = "@parameter.outer", -- parameter = argument (I like paragraphs)
                ["ia"] = "@parameter.inner", -- parameter = argument (I like paragraphs)
            },
            selection_modes = {
                ['@parameter.outer'] = 'v',
                ['@function.outer'] = 'V',
                ['@class.outer'] = '<c-v>',
            },
            include_surrounding_whitespace = false,
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["<leader>jff"] = "@function.outer",
                ["<leader>jcc"] = { query = "@class.outer", desc = "Next class start" },
                ["<leader>ja"] = "@parameter.inner",
            },
            goto_next_end = {
                ["<leader>jfe"] = "@function.outer",
                ["<leader>jce"] = "@class.outer",
            },
            goto_previous_start = {
                ["<leader>jFF"] = "@function.outer",
                ["<leader>jCC"] = "@class.outer",
                ["<leader>jA"] = "@parameter.inner",
            },
            goto_previous_end = {
                ["<leader>jFE"] = "@function.outer",
                ["<leader>jCE"] = "@class.outer",
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>ls"] = "@parameter.inner", -- acts like lsp swap
            },
            swap_previous = {
                ["<leader>lS"] = "@parameter.inner", -- acts like lsp swap
            },
        },
    },
})
