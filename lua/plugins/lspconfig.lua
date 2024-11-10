return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "j-hui/fidget.nvim",
        "williamboman/mason-lspconfig.nvim",
        "williamboman/mason.nvim",
    },
    config = function()
        require("fidget").setup({
            progress = {
                ignore = {},
            },
        })
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        require("mason-lspconfig").setup {
            ensure_installed = {
                "pyright",
                "lua_ls",
                "awk_ls",
                "bashls",
                "biome",
                "cssls",
                "html",
                "lemminx",
                --"ltex",
                "rust_analyzer",
                "solargraph",
                "somesass_ls",
                "sqlls",
                "taplo",
                "yamlls",
            },
        }
        require"lspconfig".pyright.setup{}
        require"lspconfig".lua_ls.setup{}
        require"lspconfig".awk_ls.setup{}
        require"lspconfig".bashls.setup{}
        require"lspconfig".biome.setup{}
        require"lspconfig".cssls.setup{}
        require"lspconfig".html.setup{}
        require"lspconfig".lemminx.setup{}
        --[[require"lspconfig".ltex.setup{
            settings = {
                ltex = {
                    --language = "de-DE"
                    enabled = false
                },
            },
        }]]--
        require"lspconfig".rust_analyzer.setup{}
        require"lspconfig".solargraph.setup{}
        require"lspconfig".somesass_ls.setup{}
        require"lspconfig".sqlls.setup{}
        require"lspconfig".taplo.setup{}
        require"lspconfig".yamlls.setup{}
    end
}
