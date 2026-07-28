return {
    'folke/snacks.nvim',
    config = function()
        local settings = require('h09.settings')
        local opts = {
            input = {
                enabled = true,
                icon = '',
            },
            styles = {
                input = {
                    relative = 'cursor',
                    border = settings.border,
                    backdrop = false,

                    width = 11,
                    row = -3,
                    col = 0,

                    title_pos = 'left',
                },
            },
        }
        require('snacks').setup(opts)
    end,
}
