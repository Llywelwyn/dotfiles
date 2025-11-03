return {
  {
    "gbprod/yanky.nvim",
    keys = {
      { "y", "<Plug>(YankyYank)" },
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" } },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" } },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", mode = "n" },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)", mode = "n" },
      { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", mode = "n" },
      { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", mode = "n" },
      { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", mode = "n" },
      { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", mode = "n" },
      { "<c-p>", "<Plug>(YankyPreviousEntry)", mode = "n" },
      { "<c-n>", "<Plug>(YankyNextEntry)", mode = "n" },
    },
    opts = {
      preserve_cursor_position = { enabled = true },
    },
  },
}
