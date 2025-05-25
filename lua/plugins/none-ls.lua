return {
    "nvimtools/none-ls.nvim",
    "nvimtools/none-ls-extras.nvim",
    config = function()
        local null_ls = require("null-ls")
        local none_ls_extras = require("none-ls.formatting.eslint_d")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                none_ls_extras,
            }
        })
        vim.keymap.set('n', '<M-F>', vim.lsp.buf.format, {})
    end
}
