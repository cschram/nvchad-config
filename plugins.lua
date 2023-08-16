local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local configs = require("plugins.configs.lspconfig")
      require("lspconfig").rust_analyzer.setup({
        on_attach = configs.on_attach,
        capabilities = configs.capabilities,
      })
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = false,
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
