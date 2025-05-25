return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup({
            options = {
                disabled_filetypes = {
                    statusline = {},
                },
                theme = 'auto'
            }
        })
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
