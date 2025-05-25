return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim', -- Declare as dependency here
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    borderchars = {
                        prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                        results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                        preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                    },
                },
                extensions = {
                    ["ui-select"] = require("telescope.themes").get_dropdown({})
                }
            })

            require("telescope").load_extension("ui-select")

            local builtin = require("telescope.builtin")
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        end
    }
}
