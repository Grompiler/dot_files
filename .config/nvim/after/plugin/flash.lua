require('flash').setup({
    labels = "",
    search = {
        multi_window = false,
    },
    label = {
        uppercase = false,
    },
    modes = {
        search = {
            enabled = false,
        },
        char = {
            enabled = true,
            keys = { "f", "F", "t", "T", ";", "," },
            highlight = { backdrop = false },
            jump = { register = true },
        },
        treesitter = {
            labels = "01234789",
        }
    },
    prompt = {
        enabled = false
    }
})

vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end)
