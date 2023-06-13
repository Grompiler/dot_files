local do_not_infer_comments = function()
    -- Set proper options for every new buffer, see :verb set formatoptions
    vim.cmd([[autocmd BufEnter * set formatoptions-=cro]])
end

local highlight_on_yank = function()
    local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
    vim.api.nvim_create_autocmd('TextYankPost', {
        callback = function()
            vim.highlight.on_yank()
        end,
        group = highlight_group,
        pattern = '*',
    })
end

do_not_infer_comments()
highlight_on_yank()
