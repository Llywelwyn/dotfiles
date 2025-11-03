return {
  {
    "smoka7/hop.nvim",
    version = "*",
    config = function()
      local hop = require("hop")

      hop.setup({
        keys = "etovxqpdygfblzhckisuran",
      })

      -- Runs vim cmds ... if in visual mode
      local function run_if_visual(...)
        local mode = vim.fn.mode()
        if mode == "v" then
          for _, cmd in ipairs({ ... }) do
            vim.cmd(cmd)
          end
        end
      end

      -- HopWordMW, and include whole word if in visual mode.
      local function hop_word_smart()
        ---@diagnostic disable-next-line: missing-fields
        hop.hint_words({ multi_windows = true })
        run_if_visual("normal! iw")
      end

      -- HopPatternMW, and include whole word if in visual mode.
      local function hop_pattern_smart()
        ---@diagnostic disable-next-line: missing-fields
        hop.hint_patterns({ multi_windows = true })
        run_if_visual("normal! iw")
      end

      -- stylua: ignore start
      vim.keymap.set({ "n", "x", "o" }, "gw", hop_word_smart,      { desc = "hop to word" })
      vim.keymap.set({ "n", "x", "o" }, "gl", "<cmd>HopChar1MW<CR>",     { desc = "hop to char" })
      vim.keymap.set({ "n", "x", "o" }, "g:", "<cmd>HopLineStartMW<CR>", { desc = "hop to line" })
      vim.keymap.set({ "n", "x", "o" }, "gt", "<cmd>HopNodes<CR>",       { desc = "hop to ts" })
      vim.keymap.set({ "n", "x", "o" }, "gp", hop_pattern_smart,   { desc = "hop to pattern" })
      -- stylua: ignore end
    end,
  },
}
