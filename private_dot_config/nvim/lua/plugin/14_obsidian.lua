return {
  {
    "obsidian-nvim/obsidian.nvim",
    dependencies = {
      "saghen/blink.cmp",
      "ibhagwan/fzf-lua",
    },
    version = "*",
    ft = "markdown",
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      workspaces = {
        {
          name = "vault",
          path = "~/Documents/vault",
        },
      },
    },
  },
}
