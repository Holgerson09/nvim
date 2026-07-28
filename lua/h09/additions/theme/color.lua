local M = {}

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

---@param theme string
---@param transparent? boolean
M.set_theme = function(theme, transparent)
    transparent = transparent or vim.g.theme_transparent

    vim.cmd.colorscheme(theme)
    if transparent then
        M.clear_background()
    end
end

M.clear_background = function()
    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = 'none' })
    end
end

return M
