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
        { "<leader>a", group = "ai" },
        { "<leader>c", group = "lsp actions" },
        { "<leader>s", group = "snippets" },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = true })
        end,
        desc = "show local keymaps",
      },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "mini-nvim/mini.icons" },
    opts = {},
  },
}
