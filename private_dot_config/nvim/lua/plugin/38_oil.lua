return {
  {
    "stevearc/oil.nvim",
    dependencies = { { "nvim-mini/mini.icons" } },
    opts = {},
    lazy = false,
    keys = {
      { "<leader>o", mode = "n", "<Cmd>Oil<CR>", desc = "oil" },
    },
  },
}
