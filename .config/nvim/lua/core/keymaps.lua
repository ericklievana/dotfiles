-- Set leader
vim.g.mapleader = vim.keycode('<Bslash>')

-- Set localleader
vim.g.maplocalleader = vim.keycode('<Space>')

-- Better movement through windows
vim.keymap.set('n', '<C-h>', function() vim.cmd.wincmd('h') end)
vim.keymap.set('n', '<C-j>', function() vim.cmd.wincmd('j') end)
vim.keymap.set('n', '<C-k>', function() vim.cmd.wincmd('k') end)
vim.keymap.set('n', '<C-l>', function() vim.cmd.wincmd('l') end)

-- Better buffer management
vim.keymap.set('n', '<Leader>bd', vim.cmd.bdelete)


-- To open the tree explorer
vim.keymap.set('n','<Leader>ex', vim.cmd.Explore)
