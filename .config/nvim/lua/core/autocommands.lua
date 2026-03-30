filetypes = {
  'bib',
  'c',
  'gitcommit',
  'gitconfig',
  'lua',
  'make',
  'markdown',
  'readline',
  'sh',
  'systemd',
  'tex',
  'xresources',
  'zathurarc',
}

languages = {
  'arduino',
  'asm',
  'awk',
  'bash',
  'bibtex',
  'c',
  'cpp',
  'css',
  'csv',
  'diff',
  'dockerfile',
  'fortran',
  'git_config',
  'git_rebase',
  'gitattributes',
  'gitcommit',
  'gitignore',
  'gnuplot',
  'go',
  'helm',
  'html',
  'ini',
  'java',
  'javadoc',
  'javascript',
  'jq',
  'json',
  'latex',
  'lua',
  'make',
  'markdown',
  'markdown_inline',
  'mermaid',
  'nasm',
  'nginx',
  'perl',
  'php',
  'poe_filter',
  'python',
  'readline',
  'regex',
  'ruby',
  'rust',
  'sql',
  'ssh_config',
  'terraform',
  'xml',
  'xresources',
  'yaml',
  'zathurarc',
}

-- lua require('nvim-treesitter').install(languages)

-- lua for key,lang in ipairs(require('nvim-treesitter').get_installed()) do print(key..":"..tostring(lang)) end

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
    pattern = filetypes,
    callback = function() vim.treesitter.start() end,
  }
)
