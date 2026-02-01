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


vim.api.nvim_create_autocmd(
  {'Filetype'},
  {
    pattern = {
      'sh',
      'c',
      'cpp',
      'diff',
      'dockerfile',
      'gitcommit',
      'go',
      'html',
      'json',
      'latex',
      'lua',
      'make',
      'markdown',
      'python',
      'vim',
      'vimdoc',
      'xresources',
      'yaml',
      'zathurarc',
    },
    callback = function() vim.treesitter.start() end,
  }
)
