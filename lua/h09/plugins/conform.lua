return {
    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                asm = { 'asmfmt' },
                lua = { 'stylua' },
                python = { 'ruff_organize_imports', 'ruff_format' },
                javascript = { 'prettier' },
                typescript = { 'prettier' },
                html = { 'prettier' },
                css = { 'prettier' },
                json = { 'prettier' },
                sh = { 'shfmt' },
                rust = { 'rustfmt' },
                c = { 'clang-format' },
                cpp = { 'clang-format' },
                yaml = { 'prettier' },
            },
        })
    end,
}
