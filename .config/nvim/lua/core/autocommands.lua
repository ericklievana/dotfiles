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

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'*'},
  callback = function()
    local filetype = vim.filetype.match({buf = vim.api.nvim_get_current_buf()})
    local treesitter = require('nvim-treesitter')
    local installed = treesitter.get_installed()
    for _, language in ipairs(installed) do
      if filetype == language then
        vim.treesitter.start()
        return
      end
    end
    local available = treesitter.get_available()
    for _, language in ipairs(available) do
      if filetype == language then
        print('Installing parser for '..filetype)
        treesitter.install({language},{generate = true}):wait(60000)
        print('Parser installed')
        vim.treesitter.start()
        return
      end
    end
    print('Parser for '..filetype..' not found')
  end,
})
