return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = { "echasnovski/mini.icons" },
    opts = function()
      local i = require("mini.icons")

      return {
        preset = "helix",
        delay = function(ctx)
          return ctx.plugin and 0 or 20
        end,
        -- stylua: ignore
        spec = {
          { "<leader>f", group = "find" },
          { "<leader>a", group = "ai" },
          { "<leader>c", group = "lsp actions", icon = i.get("lsp", "class") },
          { "<leader>s", group = "snippets", icon = i.get("directory", "snippets") },
        },
      }
    end,
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
