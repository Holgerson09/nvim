return {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VimEnter',
    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        vim.keymap.set('n', '<leader>jh', function()
            harpoon:list():add()
        end)
        vim.keymap.set('n', '<leader>jo', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        local keys = {
            'jj',
            'jk',
            'jl',
            'j;',
            'jf',
            'jd',
            'js',
            'ja',
        }

        for i, value in ipairs(keys) do
            vim.keymap.set('n', '<leader>' .. value, function()
                harpoon:list():select(i)
            end)
        end
    end,
}
