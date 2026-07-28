local M = {}

local theme_completion = function(arglead)
    return vim.tbl_filter(function(theme)
        return vim.startswith(theme, arglead)
    end, vim.fn.getcompletion('', 'color'))
end

local theme_transparent_completion = function()
    return { 'true', 'false' }
end

M.setup = function()
    local color = require('h09.additions.theme.color')

    vim.api.nvim_create_user_command('Theme', function(opts)
        local args = opts.fargs

        if args[1] then
            color.set_theme(args[1])
        else
            print(vim.g.colors_name)
        end
    end, { nargs = '*', complete = theme_completion })

    vim.api.nvim_create_user_command('ThemeTransparent', function(opts)
        local args = opts.fargs

        if args[1] == 'true' then
            vim.g.theme_transparent = true
            color.clear_background()
        elseif args[1] == 'false' then
            vim.g.theme_transparent = false
            color.set_theme(vim.g.colors_name)
        else
            print(vim.g.theme_transparent)
        end
    end, { nargs = '*', complete = theme_transparent_completion })
end

return M
