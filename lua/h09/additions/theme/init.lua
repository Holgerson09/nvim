local M = {}

---@class SchemeConfig
---@field theme? string
---@field transparent? boolean
---@field default_keybinds? boolean

---@type SchemeConfig
local defaults = {
    theme = 'tokyonight-night',
    transparent = true,
    default_keybinds = true,
}

---@param opts? SchemeConfig
M.setup = function(opts)
    opts = opts or {}
    local config = vim.tbl_extend('force', defaults, opts)

    require('h09.additions.theme.command').setup()
    local color = require('h09.additions.theme.color')

    vim.g.theme_transparent = config.transparent
    color.set_theme(config.theme)

    if config.default_keybinds then
        vim.keymap.set('n', '<leader><leader>t', ':Theme ')
    end
end

return M
