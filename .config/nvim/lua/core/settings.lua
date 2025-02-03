-- Set filetype plugin
vim.cmd.filetype({'plugin','on'})

-- Set line number
vim.opt.relativenumber = true
vim.opt.number = true

-- Set colorscheme
vim.cmd.colorscheme('retrobox')

-- Keep indentation
vim.opt.breakindent = true

-- Universal clipboard
vim.opt.clipboard = 'unnamedplus'

-- Confirm
vim.opt.confirm = true

-- Spaces for tabs
vim.opt.expandtab = true

-- Substitute globally
vim.opt.gdefault = true

-- Pretty linebreaks
vim.opt.linebreak = true

-- Show whitespace
vim.opt.list = true

-- Disable mouse
vim.opt.mouse = ''

-- Tab length
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Round tabs
vim.opt.shiftround = true

-- Show tabline
--vim.opt.showtabline = 2

-- Show signcolumn
vim.opt.signcolumn = 'yes'

-- Split below
vim.opt.splitbelow = true

-- Split right
vim.opt.splitright = true

-- Guicolors
vim.opt.termguicolors = true

-- Set status line
vim.opt.statusline = '%F%m%w%=%l/%L'

-- Set autoformat
vim.opt.formatoptions = 'tcqn1jp'

-- Set fuzzyfind of files
vim.opt.path:append({'**'})

-- Enable fold
vim.opt.foldenable = true

-- Start with all unfold
vim.opt.foldlevel = 99

-- Set fold method to use treesitter
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- Enable persistent undo
vim.opt.undofile = true

-- More undo levels
vim.opt.undolevels = 1000
