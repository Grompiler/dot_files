require('marks').setup {
    default_mappings = true,
    cyclic = true,
    refresh_interval = 250,
    sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
    mappings = {
        delete_line = "<leader>md",
        delete_buf = "<leader>mD",
    }
}
