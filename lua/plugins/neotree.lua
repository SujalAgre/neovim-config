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

    vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", { noremap = true, silent = true })

    vim.cmd [[
            highlight NeoTreeDirectoryIcon guifg=#d69898
            highlight NeoTreeDirectoryName guifg=#d69898
            highlight NeoTreeFileIcon guifg=#d69898
            highlight NeoTreeSymbolicLinkTarget guifg=#d69898
        ]]
  end,
}
