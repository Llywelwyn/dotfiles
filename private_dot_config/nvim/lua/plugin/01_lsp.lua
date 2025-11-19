return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "copilot" },
    },
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {
          registries = {
            "github:mason-org/mason-registry",
            "github:Crashdummyy/mason-registry",
          },
        },
      },
      { "neovim/nvim-lspconfig" },
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
  },
  {
    "seblyng/roslyn.nvim",
    config = function()
      vim.lsp.config("roslyn", {
        on_attach = function()
          print("Roslyn attached.")
        end,
        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
          },
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
          },
        },
      })
      require("roslyn").setup()
    end,
  },
}
