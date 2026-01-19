return {
    'lewis6991/gitsigns.nvim',
    reload = false,
    config = function()
        local gitsigns = require('gitsigns')
        gitsigns.setup({
            preview_config = {
                border = 'rounded',
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

        keymap.set('n', '<leader>G', gitsigns.preview_hunk)
        keymap.set('n', '<leader>gT', gitsigns.toggle_current_line_blame)
        keymap.set('n', '<leader>gB', gitsigns.blame)
    end,
}
