local do_not_infer_new_line_comments = function()
    -- Set proper options for every new buffer, see :verb set formatoptions
    vim.api.nvim_create_autocmd('BufEnter', {
        pattern = '',
        command = 'set fo-=c fo-=r fo-=o',
    })
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

local set_no_hl_on_insert_enter = function()
    vim.api.nvim_create_autocmd('InsertEnter', {
        pattern = '',
        command = 'set nohlsearch',
    })
end

local set_hl_on_insert_leave = function()
    vim.api.nvim_create_autocmd('InsertLeave', {
        pattern = '',
        command = 'set hlsearch',
    })
end

do_not_infer_new_line_comments()
highlight_on_yank()
set_no_hl_on_insert_enter()
set_hl_on_insert_leave()
