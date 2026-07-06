return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            'c',
            'c3',
            'cmake',
            'cpp',
            'css',
            'go',
            'groovy',
            'html',
            'java',
            'javascript',
            'json',
            'kotlin',
            'lua',
            'markdown',
            'markdown_inline',
            'query',
            'tsx',
            'typescript',
            'vim',
            'vimdoc',
            'yaml',
            'zig',
        })

        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                pcall(vim.treesitter.start)
            end,
        })
    end,
}
