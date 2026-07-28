return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',
                icons_enabled = false,
                component_separators = { left = '│', right = '│' },
                section_separators = { left = '', right = '' },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = {},
                lualine_y = { 'location', 'progress' },
                lualine_z = { 'filetype' },
            },
        })
    end,
}
