return {
    settings = {
        ['rust-analyzer'] = {
            procMacro = {
                enable = true,
            },
            cargo = {
                allFeatures = true,
                buildScripts = {
                    enable = true,
                },
            },
            completion = {
                autoimport = {
                    enable = true,
                },
                postfix = {
                    enable = true,
                },
            },
            checkOnSave = true,
            check = {
                command = 'clippy',
            },
            imports = {
                granularity = {
                    group = 'module',
                },
                prefix = 'self',
            },
        },
    },
}
