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
                keymaps = {
                    ['g?'] = { 'actions.show_help', mode = 'n' },
                    ['<CR>'] = 'actions.select',
                    ['<C-p>'] = 'actions.preview',
                    ['<C-c>'] = { 'actions.close', mode = 'n' },
                    ['`'] = 'actions.refresh',
                    ['-'] = { 'actions.parent', mode = 'n' },
                    ['_'] = { 'actions.open_cwd', mode = 'n' },
                    ['g~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
                    ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
                    ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
                },
                use_default_keymaps = false,
            })
            vim.keymap.set('n', '<leader>eo', ':Oil<CR>')
        end,
    },
}
