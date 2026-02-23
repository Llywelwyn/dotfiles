return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { { "nvim-mini/mini.icons" }, { "folke/trouble.nvim" } },
    opts = function(_, _)
      local config = require("fzf-lua.config")
      local actions = require("trouble.sources.fzf").actions
      config.defaults.actions.files["ctrl-t"] = actions.open
      return {
        winopts = {
          preview = {
            vertical = "down:65%",
            flip_columns = 120,
          },
        },
        files = { git_icons = true },
      }
    end,
    -- stylua: ignore
    keys = {
      { '<leader>f"', "<cmd>FzfLua registers<CR>",       mode = { "n" }, desc = "fzf registers" },
      { "<leader>fb", "<cmd>FzfLua buffers<CR>",         mode = { "n" }, desc = "fzf buffers" },
      { "<leader>fc", "<cmd>FzfLua commands<CR>",        mode = { "n" }, desc = "fzf commands" },
      { "<leader>fe", "<cmd>FzfLua changes<CR>",         mode = { "n" }, desc = "fzf edits" },
      { "<leader>ff", "<cmd>FzfLua files<CR>",           mode = { "n" }, desc = "fzf files" },
      { "<leader>fg", "<cmd>FzfLua live_grep<CR>",       mode = { "n" }, desc = "fzf grep" },
      { "<leader>fh", "<cmd>FzfLua command_history<CR>", mode = { "n" }, desc = "fzf cmd history" },
      { "<leader>fk", "<cmd>FzfLua keymaps<CR>",         mode = { "n" }, desc = "fzf keymaps" },
      { "<leader>fr", "<cmd>FzfLua oldfiles<CR>",        mode = { "n" }, desc = "fzf oldfiles" },
      { "<leader>fs", "<cmd>FzfLua<CR>",                 mode = { "n" }, desc = "fzf something else" },
    },
  },
}
