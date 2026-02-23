return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
    keys = {
      {
        "<leader>gb",
        function()
          require("gitsigns").blame_line()
        end,
        desc = "git blame current line",
      },
      {
        "<leader>g]",
        function()
          require("gitsigns").nav_hunk("next")
        end,
        desc = "git next hunk",
      },
      {
        "<leader>g[",
        function()
          require("gitsigns").nav_hunk("prev")
        end,
        desc = "git prev hunk",
      },
      {
        "<leader>gp",
        function()
          require("gitsigns").preview_hunk_inline()
        end,
        desc = "git preview hunk",
      },
    },
  },
}
