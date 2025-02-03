return{
    'gaoDean/autolist.nvim',
    lazy = true,
    ft = {
        'markdown',
        'text',
        'tex',
        'pandoc',
    },
    config = function()
        require('autolist').setup()
        vim.keymap.set('i', '<Tab>', '<cmd>AutolistTab<Enter>')
        vim.keymap.set('i', '<S-Tab>', '<cmd>AutolistShiftTab<Enter>')
        vim.keymap.set('i', '<Enter>', '<Enter><cmd>AutolistNewBullet<Enter>')
        vim.keymap.set('n', 'o', 'o<cmd>AutolistNewBullet<Enter>')
        vim.keymap.set('n', 'O', 'O<cmd>AutolistNewBulletBefore<Enter>')
        vim.keymap.set('n', '<LocalLeader>tc', '<cmd>AutolistToggleCheckbox<Enter>')
        vim.keymap.set('n', '<LocalLeader>rl', '<cmd>AutolistRecalculate<Enter>')
        vim.keymap.set('n', '>>', '>><cmd>AutolistRecalculate<Enter>')
        vim.keymap.set('n', '<<', '<<<cmd>AutolistRecalculate<Enter>')
        vim.keymap.set('n', 'dd', 'dd<cmd>AutolistRecalculate<Enter>')
        vim.keymap.set('v', 'd', 'd<cmd>AutolistRecalculate<Enter>')
    end,
}
