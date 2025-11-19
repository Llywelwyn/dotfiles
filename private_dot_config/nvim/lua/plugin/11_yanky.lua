return {
  {
    "gbprod/yanky.nvim",
    -- stylua: ignore
    keys = {
      { "y", "<Plug>(YankyYank)", desc = "yank" },
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "put after" },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "put before" },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", mode = { "n", "x" }, desc = "put after line" },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)", mode = { "n", "x" }, desc = "put before line" },
      { "<c-p>", "<Plug>(YankyPreviousEntry)", mode = "n", desc = "previous yank" },
      { "<c-n>", "<Plug>(YankyNextEntry)", mode = "n", desc = "next yank" },
      { "<leader>fy", "<Cmd>YankyRingHistory<CR>", mode = { "n", "x" }, desc = "yank history" },
    },
    opts = {
      preserve_cursor_position = { enabled = true },
    },
  },
}
