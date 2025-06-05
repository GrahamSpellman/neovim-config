return
    {
        {
            "neovim/nvim-lspconfig",
            dependencies = {
                "mason-org/mason.nvim",
                "mason-org/mason-lspconfig.nvim",
                "WhoIsSethDaniel/mason-tool-installer",
                { "https://git.sr.ht/~whynothugo/lsp_lines.nvim" },
                {
                    "folke/lazydev.nvim",
                    ft = "lua", -- only load on lua files
                    opts = {
                        library = {
                            -- See the configuration section for more details
                            -- Load luvit types when the `vim.uv` word is found
                            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                        },
                    },
                },
                "saghen/blink.cmp",
            },

            config = function()
                require("mason").setup()
                local ensure_installed = {
                    "pyright",
                    "lua_ls",
                    "bashls"
                }
                local capabilities = require('blink.cmp').get_lsp_capabilities()
                require("mason-tool-installer").setup({ensure_installed = ensure_installed})
                require("lspconfig").pyright.setup{ capabilities = capabilities }
                require("lspconfig").lua_ls.setup{ capabilities = capabilities}

                require("lsp_lines").setup()
                vim.diagnostic.config({
                    virtual_lines = true,
                    virtual_text = {
                        prefix = "",
                        spacing = 2,
                        severity = {min = vim.diagnostic.severity.HINT},
                        source = "if_many"
                    },
                    signs = true,
                    underline = true,
                    update_in_insert = false,
                })
                vim.keymap.set(
                    "",
                    "<Leader>tt",
                    require("lsp_lines").toggle,
                    { desc = "Toggle lsp_lines" }
                )
            end
        }
    }
