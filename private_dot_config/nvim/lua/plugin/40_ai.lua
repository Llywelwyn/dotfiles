return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "codecompanion" },
      },
      {
        "nvim-mini/mini.diff",
        config = function()
          require("mini.diff").setup({
            source = require("mini.diff").gen_source.none(),
          })
        end,
      },
      {
        "HakonHarnes/img-clip.nvim",
        opts = {
          filetypes = {
            codecompanion = {
              prompt_for_file_name = false,
              template = "[Image]($FILE_PATH)",
              use_absolute_path = true,
            },
          },
        },
      },
    },
    -- stylua: ignore start
    keys = {
      { "<leader>ac", mode = { "n", "v" }, "<cmd>CodeCompanionChat Toggle<cr>", desc = "toggle chat" },
      { "<leader>aa", mode = { "n", "v" }, "<cmd>CodeCompanionActions<cr>",     desc = "actions picker" },
      { "<leader>ap",  mode = { "v" },      "<cmd>CodeCompanionChat Add<cr>",    desc = "put in chat",  },
      { "<leader>ai", mode = { "n", "v" }, "<cmd>CodeCompanion<cr>",            desc = "in-line prompt",  },
    },
    -- stylua: ignore end
    opts = {
      strategies = {
        chat = {
          variables = {
            ["buffer"] = {
              opts = {
                default_params = "watch",
              },
            },
          },
          slash_commands = {
            ["buffer"] = {
              keymaps = {
                modes = {
                  i = "<c-b>",
                  n = "<leader>b",
                },
              },
            },
          },
        },
      },
      display = {
        action_palette = {
          width = 85,
          height = 10,
          prompt = "prompt:",
          provider = "fzf_lua",
          opts = {
            show_default_actions = true,
            show_default_prompt_library = true,
            title = "action:",
          },
        },
      },
    },
  },
}
