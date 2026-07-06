return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
        require('lualine').setup({
            options = {
                theme = 'auto',
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = {},
                lualine_y = { 'filetype' },
                lualine_z = { 'progress' },
            },
        })
    end,
}
