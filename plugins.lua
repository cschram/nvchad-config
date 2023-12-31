local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local configs = require("plugins.configs.lspconfig")
      lspconfig.rust_analyzer.setup({
        on_attach = configs.on_attach,
        capabilities = configs.capabilities,
      })
      lspconfig.tsserver.setup({
        on_attach = configs.on_attach,
        capabilities = configs.capabilities,
      })
    end,
  },
  {
    "LhKipp/nvim-nu",
    lazy = false,
    config = function()
      require("nu").setup({
        use_lsp_features = false,
      })
    end,
  },
  {
    "NeogitOrg/neogit",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "sindrets/diffview.nvim",
    },
    config = true
  }
}

return plugins
