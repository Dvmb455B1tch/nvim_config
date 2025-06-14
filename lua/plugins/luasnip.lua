return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  opts = {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  },
  config = function(_, opts)
    local luasnip = require("luasnip")
    luasnip.config.set_config(opts)

    -- Load vscode-style snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Optional: load snippets from ~/.config/nvim/snippets
    -- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

    -- Keybindings
    local map = vim.keymap.set
    local options = { silent = true, expr = true }

    map({ "i", "s" }, "<Tab>", function()
      return luasnip.expand_or_jumpable() and "<Plug>luasnip-expand-or-jump" or "<Tab>"
    end, options)

    map({ "i", "s" }, "<S-Tab>", function()
      return luasnip.jumpable(-1) and "<Plug>luasnip-jump-prev" or "<S-Tab>"
    end, options)
  end,
}
