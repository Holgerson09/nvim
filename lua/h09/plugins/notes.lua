return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ft = { 'markdown' },
        opts = {
            render_modes = { 'n', 'c', 'i' },
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
        },
    },
}
