-- Filetype off
vim.cmd('filetype plugin off')
vim.cmd('filetype indent off')

-- Remove trailing whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
