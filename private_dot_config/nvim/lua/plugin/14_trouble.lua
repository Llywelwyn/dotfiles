return {
  {
    "folke/trouble.nvim",
    opts = {
      auto_close = true,
      auto_preview = false,
      focus = true,
      warn_no_results = false,
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>tq",
        "<cmd>Trouble fzf_files close<cr><cmd>Trouble fzf close<cr>",
        desc = "Close",
      },
      {
        "<leader>td",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics",
      },
      {
        "<leader>tb",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer diagnostics",
      },
      {
        "<leader>ts",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols",
      },
      {
        "<leader>tl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP definitions",
      },
    },
  },
}
