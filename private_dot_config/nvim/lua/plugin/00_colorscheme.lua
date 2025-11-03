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
}
