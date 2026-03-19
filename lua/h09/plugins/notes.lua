return {
    {
        'epwalsh/obsidian.nvim',
        version = '*',
        lazy = true,
        ft = 'markdown',
        cmd = {
            'ObsidianOpen',
            'ObsidianNew',
            'ObsidianQuickSwitch',
            'ObsidianFollowLink',
            'ObsidianSearch',
            'ObsidianBacklinks',
            'ObsidianToday',
            'ObsidianDailies',
            'ObsidianWorkspace',
        },
        keys = {
            { '<leader>on', '<cmd>ObsidianNew<cr>', desc = 'New Obsidian Note' },
            { '<leader>os', '<cmd>ObsidianSearch<cr>', desc = 'Search Obsidian Notes' },
            { '<leader>oo', '<cmd>ObsidianQuickSwitch<cr>', desc = 'Quick Switch Note' },
            { '<leader>ow', '<cmd>ObsidianWorkspace<cr>', desc = 'Switch Workspace' },
        },
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        opts = {
            workspaces = {
                {
                    name = 'personal',
                    path = '~/notes/personal',
                },
                {
                    name = 'school',
                    path = '~/notes/school',
                },
                {
                    name = 'project',
                    path = '~/notes/project',
                },
            },
            ui = { enable = false },
        },
        config = function(_, opts)
            require('obsidian').setup(opts)
            vim.api.nvim_set_hl(0, 'ObsidianTodo', { fg = '#6c7086' })
            vim.api.nvim_set_hl(0, 'ObsidianDone', { fg = '#a6e3a1' })
            vim.api.nvim_set_hl(0, 'ObsidianRightArrow', { fg = '#f9e2af' })

            vim.api.nvim_set_hl(0, 'ObsidianImportant', { fg = '#fab387' })
            vim.api.nvim_set_hl(0, 'ObsidianCanceled', { fg = '#f38ba8' })
            vim.api.nvim_set_hl(0, 'ObsidianDeferred', { fg = '#89b4fa' })
        end,
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ft = { 'markdown', 'obisidian' },
        opts = {
            render_modes = { 'n', 'c', 'i' },
            checkbox = {
                unchecked = {
                    icon = '󰄱',
                    highlight = 'ObsidianTodo',
                },
                checked = {
                    icon = '󰄲',
                    highlight = 'ObsidianDone',
                },
                custom = {
                    important = { raw = '[!]', rendered = '󰀧', highlight = 'ObsidianImportant' },
                    canceled = { raw = '[~]', rendered = '󰅗', highlight = 'ObsidianCanceled' },
                    deferred = { raw = '[>]', rendered = '󰜵', highlight = 'ObsidianDeferred' },
                },
            },
            bullet = {
                icons = { '', '' },
            },
        },
    },
}
