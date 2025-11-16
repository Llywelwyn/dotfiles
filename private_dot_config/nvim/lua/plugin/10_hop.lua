return {
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").opts.preview = function(ch0, ch1, ch2)
        return not (
          ch1:match("%s")
          or (ch0:match("%a") and ch1:match("%a") and ch2:match("%a"))
        )
      end

      -- hop label at start of word, rather than the end
      require("leap").opts.on_beacons = function(targets, _, _)
        for _, t in ipairs(targets) do
          if t.label and t.beacon then
            t.beacon[1] = 0
          end
        end
      end

      -- gray out backdrop when selecting
      vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })

      require("leap").opts.equivalence_classes = {
        " \t\r\n",
        "([{",
        ")]}",
        "'\"`",
      }

      vim.keymap.set({ "n", "x", "o" }, "s", function()
        require("leap").leap({ target_windows = vim.api.nvim_list_wins() })
        if vim.fn.mode() == "v" then
          vim.cmd("normal! iw")
        end
      end)

      vim.keymap.set({ "n", "o" }, "gs", function()
        require("leap.remote").action({
          input = vim.fn.mode(true):match("o") and "" or "v",
        })
      end)
    end,
  },
}
