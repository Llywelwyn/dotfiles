return {
  {
    "stevearc/oil.nvim",
    dependencies = { { "nvim-mini/mini.icons" } },
    opts = {
      use_default_keymaps = false,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<CR>"] = "actions.select",
        ["<leader><leader>"] = "actions.preview",
        ["-"] = { "actions.parent", mode = "n" },
        ["="] = { "actions.open_cwd", mode = "n" },
        ["+"] = { "actions.cd", mode = "n" },
        ["<leader>;"] = { "actions.select", opts = { vertical = true } },
        ["<leader>-"] = { "actions.select", opts = { horizontal = true } },
        ["<leader>x"] = "actions.open_external",
        ["g."] = { "actions.toggle_hidden", mode = "n" },
      },
      float = {
        padding = 2,
        max_width = 0,
        max_height = 0,
        border = nil,
        preview_split = "auto",
      },
    },
    lazy = false,
    keys = {
      { "<leader>o", mode = "n", "<Cmd>Oil<CR>", desc = "oil" },
    },
  },
}
