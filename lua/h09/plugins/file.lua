return {
    {
        'mikavilpas/yazi.nvim',
        event = 'VeryLazy',
        dependencies = {
            'folke/snacks.nvim',
        },
        config = function()
            vim.keymap.set('n', '<leader>ee', ':Yazi<cr>')
        end,
    },
    {
        'stevearc/oil.nvim',
        event = 'VeryLazy',
        config = function()
            require('oil').setup({
                view_options = {
                    show_hidden = true,
                },
            })
            vim.keymap.set('n', '<leader>eo', ':Oil<CR>')
        end,
    },
}
