local M = {}

local completion = function(arglead, cmdline)
    local parts = vim.split(cmdline, '%s+')

    if #parts <= 2 then
        return { 'set', 'transparent' }
    end

    if parts[2] == 'set' then
        return vim.tbl_filter(function(theme)
            return vim.startswith(theme, arglead)
        end, vim.fn.getcompletion('', 'color'))
    end

    if parts[2] == 'transparent' then
        return { 'true', 'false' }
    end

    return {}
end

M.setup = function()
    vim.api.nvim_create_user_command('Theme', function(opts)
        local args = opts.fargs

        if args[1] == 'set' then
            if args[2] then
                M.set_theme(args[2])
            else
                print('Missing colorscheme')
            end
        elseif args[1] == 'transparent' then
            if args[2] == 'true' then
                vim.g.theme_transparent = true
                M.clear_background()
            elseif args[2] == 'false' then
                vim.g.theme_transparent = false
                M.set_theme(vim.g.colors_name)
            elseif #args > 1 then
                print('Invalid value: "' .. args[2] .. '"')
            else
                print(vim.g.theme_transparent)
            end
        else
            print('Invalid command')
        end
    end, { nargs = '*', complete = completion })
end

return M
