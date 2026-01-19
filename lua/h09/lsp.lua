local M = {}

M.servers = {
    'pyright',
    'ts_ls',
    'rust_analyzer',
    'clangd',
    'jsonls',
    'emmet_language_server',
    'html',
    'spyglassmc_language_server',
    'lua_ls',
    'dockerls',
    'docker_compose_language_service',
    'zls',
    'angularls',
}

M.setup = function()
    vim.diagnostic.config({
        virtual_text = false,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
    })

    vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
            local set = vim.keymap.set
            local opts = { buffer = ev.buf, noremap = true, silent = true }

            set('n', 'gR', ':Telescope lsp_references<cr>', opts)
            set('n', 'gr', vim.lsp.buf.references, opts)
            set('n', 'gd', vim.lsp.buf.definition, opts)
            set('n', 'gt', ':Telescope lsp_type_definitions<cr>', opts)
            set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
            set('n', '<leader>rn', vim.lsp.buf.rename, opts)
            set('n', '<leader>rs', ':LspRestart<cr>', opts)

            set('n', 'K', function()
                vim.lsp.buf.hover({ border = 'rounded' })
            end, opts)

            set('n', '<leader>F', function()
                require('conform').format({ async = true })
            end, opts)

            set('n', '<leader>E', function()
                vim.diagnostic.open_float({ border = 'rounded' })
            end, opts)
        end,
    })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)
    local file_op_caps = require('lsp-file-operations').default_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, file_op_caps)

    vim.lsp.config('*', {
        capabilities = capabilities,
    })

    vim.lsp.enable(M.servers)
end

return M
