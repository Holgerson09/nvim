return {
    'nvim-lua/plenary.nvim',
    'tpope/vim-surround',
    'christoomey/vim-tmux-navigator',
    {
        'neovim/nvim-lspconfig',
        lazy = false,
        dependencies = {
            { 'antosha417/nvim-lsp-file-operations', config = true },
            'saghen/blink.cmp',
        },
        config = function()
            require('h09.lsp').setup()
        end
    }
}
