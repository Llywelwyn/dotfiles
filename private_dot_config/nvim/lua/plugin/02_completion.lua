return {
  { "nvim-mini/mini.pairs", opts = {} },
  {
    "saghen/blink.cmp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      "fang2hou/blink-copilot",
    },
    version = "1.*",
    opts = {
      keymap = { preset = "super-tab" },
      appearance = { nerd_font_variant = "mono" },
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 0 },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
      cmdline = {
        keymap = { preset = "inherit" },
        completion = { menu = { auto_show = true } },
      },
    },
    opts_extend = { "sources.default" },
  },
  {
    "nvim-mini/mini.snippets",
    opts = function()
      local gen_loader = require("mini.snippets").gen_loader
      return {
        snippets = {
          gen_loader.from_file(
            vim.fn.stdpath("config") .. "/snippets/global.json"
          ),
          gen_loader.from_lang(),
        },
      }
    end,
  },
  {
    "chrisgrieser/nvim-scissors",
    opts = { snippetDir = vim.fn.stdpath("config") .. "/snippets" },
    keys = {
      {
        "<leader>sa",
        "<cmd>ScissorsAddNewSnippet<CR>",
        mode = { "n", "x" },
        desc = "Save selection as snippet",
      },
      {
        "<leader>se",
        "<cmd>ScissorsEditSnippet<CR>",
        mode = { "n", "x" },
        desc = "Edit existing snippet",
      },
    },
  },
}
