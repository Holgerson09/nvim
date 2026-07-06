return {
    'theprimeagen/harpoon',
    event = 'VimEnter',
    config = function()
        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        local keymap = vim.keymap

        keymap.set('n', '<leader>ja', mark.add_file)
        keymap.set('n', '<leader>jo', ui.toggle_quick_menu)

        keymap.set('n', '<leader>jj', function()
            ui.nav_file(1)
        end)
        keymap.set('n', '<leader>jk', function()
            ui.nav_file(2)
        end)
        keymap.set('n', '<leader>jl', function()
            ui.nav_file(3)
        end)
        keymap.set('n', '<leader>j;', function()
            ui.nav_file(4)
        end)
    end,
}
