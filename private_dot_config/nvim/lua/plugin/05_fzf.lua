return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { { 'nvim-mini/mini.icons' }, },
    opts = {
      winopts = {
        preview = {
          vertical = "down:65%",
          flip_columns = 120
        }
      },
      files = { git_icons = true, },
    },
    keys = {
      { "f", "<cmd>FzfLua global<CR>", mode = { "n" }, desc = "Fzf everything" },
      { "<leader>fg", "<cmd>FzfLua global<CR>", mode = { "n" }, desc = "Fzf everything" },
    },
  },
}
