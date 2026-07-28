return {
    'lewis6991/gitsigns.nvim',
    reload = false,
    config = function()
        local gitsigns = require('gitsigns')
        local settings = require('h09.settings')
        gitsigns.setup({
            preview_config = {
                border = settings.border,
                style = 'minimal',
                relative = 'cursor',
            },
            watch_gitdir = {
                interval = 100,
                follow_files = true,
            },
            auto_attach = true,
            attach_to_untracked = true,
        })

        local keymap = vim.keymap

        keymap.set('n', '<leader>G', gitsigns.toggle_current_line_blame)

        keymap.set('n', '<leader>gh', gitsigns.preview_hunk)
        keymap.set('n', '<leader>go', gitsigns.blame_line)
        keymap.set('n', '<leader>gr', gitsigns.reset_hunk)

        local next = function() gitsigns.nav_hunk('next') end
        local prev = function() gitsigns.nav_hunk('prev') end

        keymap.set('n', '<leader>gj' , next)
        keymap.set('n', '<leader>gk' , prev)
        keymap.set('n', '<leader>gn' , next)
        keymap.set('n', '<leader>gp' , prev)

        keymap.set('n', '<leader>gb', gitsigns.blame)
        keymap.set('n', '<leader>gd', gitsigns.diffthis)
        keymap.set('n', '<leader>gc', gitsigns.show_commit)
    end,
}
