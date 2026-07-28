return {
    'mason-org/mason.nvim',
    dependencies = {
        'mason-org/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local mason_tool_installer = require('mason-tool-installer')

        mason.setup({
            ui = {
                icons = {
                    package_installed = '✓',
                    package_pending = '➜',
                    package_uninstalled = '✗',
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = require('h09.lsp').servers,
            automatic_installation = true,
        })

        mason_tool_installer.setup({
            ensure_installed = {
                'c3-lsp',
                'clang-format',
                'fourmolu',
                'prettier',
                'ruff',
                'shfmt',
                'stylua',
                'taplo',
            },
            auto_update = false,
            automatic_installation = true,
        })
    end,
}
