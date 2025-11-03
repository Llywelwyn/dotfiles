return {
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {
      preset = "helix",
      delay = function(ctx) return ctx.plugin and 0 or 20 end,
      spec = { 
	{ "<leader>f", group = "fzf" },
	{ "<leader>s", group = "snippet" },
	{ "<leader>e", group = "edit config" },
      },
    },
    keys = {
	{ "<leader>?", function() require("which-key").show({ global = true }) end, desc = "buffer local keymaps" }
    }
  },
}
