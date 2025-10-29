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

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '*' },
  callback = function() vim.treesitter.start() end,
})
