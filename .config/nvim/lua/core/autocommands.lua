vim.api.nvim_create_autocmd(
    {'BufWritePre'},
    {
        pattern = {'*'},
        command = [[%s/\s\+$//e]],
    }
)

vim.api.nvim_create_autocmd(
    {'BufEnter'},
    {
        pattern = {'*'},
        callback = function() vim.opt.formatoptions = 'tcqn1jp' end,
    }
)
