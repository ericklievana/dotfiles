-- Enable spellcheck
vim.opt_local.spell = true

-- Open zathura to view pdf
vim.keymap.set(
    'n',
    '<LocalLeader>op',
    function()
        vim.system({'zathura', vim.fn.expand('%:p:r')..'.pdf'}, { text = true })
    end
)
