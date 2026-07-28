local M = {}

M.setup = function()
    vim.filetype.add({
        extension = {
            md = 'note',
        },
    })
    vim.treesitter.language.register('markdown', 'note')
end

return M
