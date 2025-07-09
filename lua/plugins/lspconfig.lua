return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(_, bufnr)
        local function buf_map(mode, lhs, rhs)
          vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
        end

        -- Hover
        buf_map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
        -- Format
        buf_map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>")
      end

      lspconfig.ts_ls.setup({ on_attach = on_attach })
      lspconfig.html.setup({ on_attach = on_attach })
      lspconfig.cssls.setup({ on_attach = on_attach })
      lspconfig.lua_ls.setup({ on_attach = on_attach })
    end,
  },

  -- Mason (LSP Installer)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason + lspconfig integration
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "html",
          "cssls",
          "lua_ls",
        },
      })
    end,
  },
}
