M = {}

---@class SchemeConfig
---@field scheme string
---@field transparent boolean

---@type SchemeConfig
local defaults = {
    scheme = 'tokyonight-night',
    transparent = true,
}

local groups = {
    'Normal',
    'NormalFloat',
    'NormalNC',
    'TabLine',
    'TabLineFill',
    'TabLineSel',
    'FloatBorder',
    'StatusLine',
    'StatusLineNC',
    'WinSeparator',
    'EndOfBuffer',

    'LineNr',
    'CursorLineNr',
    'FoldColumn',
    'SignColumn',

    'TelescopeNormal',
    'TelescopeBorder',
    'TelescopePromptNormal',
    'TelescopePromptBorder',
    'TelescopePromptTitle',
    'TelescopePreviewNormal',
    'TelescopePreviewBorder',
    'TelescopePreviewTitle',
    'TelescopeResultsNormal',
    'TelescopeResultsBorder',
    'TelescopeResultsTitle',

    'markdownCode',
    'markdownCodeBlock',
}

---@param opts SchemeConfig
M.setup = function(opts)
    opts = opts or defaults

    vim.cmd.colorscheme(opts.scheme)
    if opts.transparent then
        M.clear_background()
    end
end

M.clear_background = function()
    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = 'none' })
    end
end

return M
