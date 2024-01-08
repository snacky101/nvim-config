return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
            },
        })

        local autoformat_augroup = vim.api.nvim_create_augroup("AutoFormatSettings", { clear = true })
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = { "*" },
            group = autoformat_augroup,
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end,
}
