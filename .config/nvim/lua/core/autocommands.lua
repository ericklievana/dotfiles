vim.api.nvim_create_autocmd(
  {'BufWritePre'},
  {
    pattern = {'*'},
    command = [[%s/\s\+$//e]],
  }
)

vim.api.nvim_create_autocmd(
  {'BufRead'},
  {
    pattern = {'*'},
    callback = function() vim.opt.formatoptions = 'tcqn1jp' end,
  }
)
