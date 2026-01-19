return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({
            'javascript',
            'typescript',
            'tsx',
            'c',
            'cpp',
            'lua',
            'vim',
            'vimdoc',
            'query',
            'markdown',
            'markdown_inline',
            'html',
            'css',
            'json',
        })

        vim.api.nvim_create_autocmd('FileType', {
            callback = function(ev)
                local ft = vim.bo[ev.buf].filetype
                local lang = vim.treesitter.language.get_lang(ft) or ft
                local has_parser = pcall(vim.treesitter.get_parser, ev.buf, lang)

                if has_parser then
                    vim.treesitter.start()
                end
            end
        })
    end,
}
