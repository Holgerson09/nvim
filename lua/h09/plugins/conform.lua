return {
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                c = { 'clang-format' },
                cpp = { 'clang-format' },
                css = { 'prettier' },
                haskell = { 'fourmolu' },
                html = { 'prettier' },
                javascript = { 'prettier' },
                json = { 'prettier' },
                lua = { 'stylua' },
                python = { 'ruff_organize_imports', 'ruff_format' },
                rust = { 'rustfmt' },
                sh = { 'shfmt' },
                typescript = { 'prettier' },
                yaml = { 'prettier' },
            },
        })
    end,
}
