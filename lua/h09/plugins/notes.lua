return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { 'note' },
    config = function()
        local opts = {
            render_modes = { 'n', 'c', 'i' },
            completions = { lsp = { enabled = true } },

            sign = {
                enabled = false,
            },
            heading = { enabled = false },
            indent = {
                enabled = true,
                per_level = 2,
                skip_heading = true,
            },

            code = {
                style = 'full',
                width = 'block',
                border = 'thick',

                language_pad = 2,
                left_pad = 4,
                right_pad = 4,
            },
            checkbox = {
                unchecked = {
                    icon = '󰄱',
                },
                checked = {
                    icon = '󰄲',
                },
            },
            bullet = {
                icons = { '', '' },
            },
        }
        require('render-markdown').setup(opts)
    end,
}
