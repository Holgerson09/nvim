return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            'c',
            'c3',
            'c_sharp',
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
            'make',
            'markdown',
            'markdown_inline',
            'query',
            'rust',
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
