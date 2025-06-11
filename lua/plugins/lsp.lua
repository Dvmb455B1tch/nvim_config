return 
{
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason-lspconfig.nvim" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {},
      })

      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({cmd = { "/home/riramana/opt/clangd/clangd_20.1.0/bin/clangd" },})
    end,
  },
}
