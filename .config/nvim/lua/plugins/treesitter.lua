return{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function ()
    local treesitter = require('nvim-treesitter')
    treesitter.install({
        'c',
        'lua',
        'vim',
        'vimdoc',
        'cpp',
        'bash',
        'html',
        'gitcommit',
        'make',
        'markdown',
        'go',
        'python',
        'dockerfile',
        'yaml',
        'json',
        'latex',
      })
  end,
}

