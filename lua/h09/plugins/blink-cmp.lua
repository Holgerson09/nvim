return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = 'v1.*',
    opts = {
        keymap = { preset = 'default' },
        appearance = {
            nerd_font_variant = 'mono',
        },
        completion = {
            documentation = { auto_show = false },
        },
        fuzzy = { implementation = 'prefer_rust' },
    },
    opts_extend = { 'sources.default' },
}
