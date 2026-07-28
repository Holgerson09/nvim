return {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local settings = require('h09.settings')
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.load_extension('fzf')

        telescope.setup({
            defaults = {
                border = true,
                borderchars = settings.borderchars[settings.border],
            },
        })

        local keymap = vim.keymap

        keymap.set('n', '<leader>fd', builtin.find_files)
        keymap.set('n', '<leader>fg', builtin.git_files)
        keymap.set('n', '<leader>fs', builtin.live_grep)
        keymap.set('n', '<leader>fc', builtin.grep_string)
        keymap.set('n', '<leader>fl', builtin.lsp_document_symbols)
        keymap.set('n', '<leader>fh', builtin.help_tags)
        keymap.set('n', '<leader>fw', function()
            local search_string = vim.fn.input('Grep > ')
            if search_string ~= '' then
                builtin.grep_string({
                    search = search_string,
                })
            end
        end)

        keymap.set('n', '<leader>fn', function()
            require('telescope.builtin').find_files({
                cwd = vim.fn.stdpath('config'),
            })
        end)
    end,
}
