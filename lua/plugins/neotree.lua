return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    config = function()
        require("neo-tree").setup({
            window = {
                width = 30,
            },
        })

        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", { noremap = true, silent = true })

        -- Custom icon highlight colors
        vim.cmd [[
            highlight NeoTreeDirectoryIcon guifg=#878787
            highlight NeoTreeDirectoryName guifg=#878787
            highlight NeoTreeFileIcon guifg=#878787
            highlight NeoTreeSymbolicLinkTarget guifg=##878787
        ]]
    end,
}
