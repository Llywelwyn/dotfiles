return {
  {
    "gbprod/yanky.nvim",
    keys = {
      { "y", "<Plug>(YankyYank)" },
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" } },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" } },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", mode = { "n", "x" } },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)", mode = { "n", "x" } },
      { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", mode = { "n", "x" } },
      { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", mode = { "n", "x" } },
      { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", mode = { "n", "x" } },
      { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", mode = { "n", "x" } },
      { "<c-p>", "<Plug>(YankyPreviousEntry)", mode = "n" },
      { "<c-n>", "<Plug>(YankyNextEntry)", mode = "n" },
      { "<leader>fy", "<Cmd>YankyRingHistory<CR>", mode = { "n", "x" } },
    },
    opts = {
      preserve_cursor_position = { enabled = true },
    },
  },
}
