return {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    config = function()
        require('todo-comments').setup({
            signs = false,
            highlight = {
                before = '',
                keyword = 'wide',
                after = '',
            },
            keywords = {
                IMPORTANT = { icon = ' ', color = 'error' },
            },
        })
    end,
}
