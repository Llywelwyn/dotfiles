return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      user_default_options = {
        names = false,
      },
    },
  },
  {
    "karb94/neoscroll.nvim",
    opts = {
      duration_multiplier = 0.3,
    },
  },
}
