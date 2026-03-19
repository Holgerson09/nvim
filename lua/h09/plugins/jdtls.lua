return {
    'mfussenegger/nvim-jdtls',
    dependencies = {
        'williamboman/mason.nvim',
    },
    ft = { 'java' },
    config = function()
        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'java',
            callback = function()
                local home = os.getenv('HOME')
                local jdtls_path = home .. '/.local/share/nvim/mason/packages/jdtls'
                local path_to_launcher = vim.fn.glob(jdtls_path .. '/plugins/org.eclipse.equinox.launcher_*.jar')
                local path_to_config = jdtls_path .. '/config_linux'
                local path_to_lombok = jdtls_path .. '/lombok.jar'

                local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
                local workspace_dir = home .. '/.cache/jdtls/workspace/' .. project_name

                local root_dir = require('jdtls.setup').find_root({ '.git', 'gradlew', 'build.gradle' })

                local config = {
                    cmd = {
                        'java',
                        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                        '-Dosgi.bundles.defaultStartLevel=4',
                        '-Declipse.product=org.eclipse.jdt.ls.core.product',
                        '-Dlog.protocol=true',
                        '-Dlog.level=ALL',
                        '-Xmx1g',
                        '--add-modules=ALL-SYSTEM',
                        '--add-opens',
                        'java.base/java.util=ALL-UNNAMED',
                        '--add-opens',
                        'java.base/java.lang=ALL-UNNAMED',

                        '-javaagent:' .. path_to_lombok,

                        '-jar',
                        path_to_launcher,
                        '-configuration',
                        path_to_config,
                        '-data',
                        workspace_dir,
                    },
                    root_dir = root_dir,
                    settings = {
                        java = {
                            contentProvider = { preferred = 'fernflower' },
                            configuration = {
                                runtimes = {
                                    {
                                        name = 'JavaSE-25',
                                        path = '/usr/lib/jvm/java-25-openjdk/',
                                        default = true,
                                    },
                                },
                            },
                        },
                    },
                    init_options = {
                        bundles = {},
                        extendedClientCapabilities = {
                            classFileContentsSupport = true,
                            generateJavadocSupport = true,
                        },
                    },
                }

                require('jdtls').start_or_attach(config)
            end,
        })
    end,
}
