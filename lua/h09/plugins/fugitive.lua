return {
    'tpope/vim-fugitive',
    config = function()
        local keymap = vim.keymap

        keymap.set('n', '<leader>gs', vim.cmd.Git)
        keymap.set('n', '<leader>gb', ':Telescope git_branches<cr>')
        keymap.set('n', '<leader>gc', ':Telescope git_commits<cr>')
        keymap.set('n', '<leader>gf', ':Telescope git_bcommits<cr>')
        keymap.set('n', '<leader>gd', function()
            require('telescope.builtin').git_branches({
                attach_mappings = function(_, map)
                    map('i', '<CR>', function(prompt_bufnr)
                        local actions = require('telescope.actions')
                        local action_state = require('telescope.actions.state')
                        local selection = action_state.get_selected_entry()
                        actions.close(prompt_bufnr)
                        if selection then
                            vim.cmd('Gvdiffsplit ' .. selection.value)
                        end
                    end)
                    return true
                end,
            })
        end)
    end,
}
