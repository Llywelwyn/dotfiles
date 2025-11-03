return {
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
    -- stylua: ignore
    keys = {
      { "gw", "<cmd>HopWordMW<CR>",      mode = { "n", "x", "o" }, desc = "hop to word"    },
      { "gc", "<cmd>HopChar1MW<CR>",     mode = { "n", "x", "o" }, desc = "hop to char"    },
      { "gl", "<cmd>HopLineStartMW<CR>", mode = { "n", "x", "o" }, desc = "hop to word"    },
      { "gn",  "<cmd>HopNodes<CR>",      mode = { "n", "x", "o" }, desc = "hop nodes"      },
      { "gp",  "<cmd>HopPatternMW<CR>",  mode = { "n", "x", "o" }, desc = "hop to pattern" },
    },
  },
}
