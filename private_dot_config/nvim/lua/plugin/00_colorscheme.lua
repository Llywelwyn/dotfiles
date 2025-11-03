return {
  {
    "oneslash/helix-nvim",
    vsersion = "*",
    config = function()
      vim.cmd.colorscheme("helix")
    end,
  },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {},
  },
  {
    "karb94/neoscroll.nvim",
    opts = {
      duration_multiplier = 0.3,
    },
  },
}
