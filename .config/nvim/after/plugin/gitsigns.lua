require('gitsigns').setup {
    on_attach = function(bufnr)
        local gitsigns = package.loaded.gitsigns

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', '<leader>jc', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gitsigns.next_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        map('n', '<leader>jC', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gitsigns.prev_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        -- Actions
        map('n', '<leader>gb', gitsigns.toggle_current_line_blame)
        map('n', '<leader>gB', function() gitsigns.blame_line { full = true } end)
        map('n', '<leader>gd', function() gitsigns.diffthis('~') end)
        map('n', '<leader>gx', gitsigns.reset_hunk)
    end
}
