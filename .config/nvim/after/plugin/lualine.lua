require('lualine').setup {
    options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename', 'searchcount', 'selectioncount' },
        lualine_c = { 'branch', 'diff' },
        lualine_x = { 'diagnostics', 'encoding', 'filesize' },
        lualine_y = { 'filetype' },
        lualine_z = { 'progress', 'location' },
    }
}
