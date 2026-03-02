return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "html", "cssls", "jsonls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Apply blink.cmp capabilities to all LSP servers
            vim.lsp.config('*', {
                capabilities = require('blink.cmp').get_lsp_capabilities(),
            })

            -- Enable LSP servers (configs provided by nvim-lspconfig)
            vim.lsp.enable({ 'lua_ls', 'ts_ls', 'html', 'cssls', 'jsonls' })

            vim.keymap.set('n', "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
            -- gd is handled by Snacks picker (lsp_definitions)
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
            vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = "Rename Symbol" })
        end
    }
}
