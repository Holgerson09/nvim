return {
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                lua = { 'stylua' },
                python = { 'isort', 'black' },
                javascript = { 'prettier' },
                typescript = { 'prettier' },
                html = { 'prettier' },
                css = { 'prettier' },
                json = { 'prettier' },
                sh = { 'shfmt' },
                rust = { 'rustfmt' },
                c = { 'clang-format' },
                cpp = { 'clang-format' },
            },
        })
    end,
}
