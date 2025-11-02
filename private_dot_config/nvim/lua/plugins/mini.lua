return {
  {
    'nvim-mini/mini.nvim',
    version = false,
    config = function ()
      require("mini.pairs").setup()
      require("mini.icons").setup()
      require("mini.indentscope").setup()
    end,
  },
}
