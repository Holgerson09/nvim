return {
    'saghen/blink.cmp',
    dependencies = { 'L3MON4D3/LuaSnip', version = 'v2.*' },
    version = 'v1.*',
    opts = {
        snippets = { preset = 'luasnip' },
        keymap = { preset = 'default' },
        appearance = {
            nerd_font_variant = 'mono',
        },
        completion = {
            documentation = { auto_show = false },
        },
        fuzzy = { implementation = 'prefer_rust' },
    },
}
