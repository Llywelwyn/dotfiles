return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = function(ctx)
        return ctx.plugin and 0 or 20
      end,
      spec = {
        { "<leader>f", group = "find" },
        { "<leader>a", group = "lsp action" },
        { "<leader>s", group = "snippet" },
        { "<leader>e", group = "edit config" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = true })
        end,
        desc = "buffer local keymaps",
      },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "mini-nvim/mini.icons" },
    opts = {},
  },
}
