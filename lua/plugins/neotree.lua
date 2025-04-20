return 
{
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = 
    {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- icons plugin!
      "MunifTanjim/nui.nvim",
    },
    config = function()
	--------
	vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
	--------
	require("nvim-web-devicons").setup({ default = true })
	--------
	require("neo-tree").setup({filesystem = {filtered_items = {visible = true, },},})
    end,
  }
}

