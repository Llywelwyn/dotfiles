return {
  { 'nvim-mini/mini.completion', version = false },
  { 'rafamadriz/friendly-snippets' },
  {
    'nvim-mini/mini.snippets',
    opts = function()
      local gen_loader = require('mini.snippets').gen_loader
      return {
        snippets = {
          gen_loader.from_file(vim.fn.stdpath("config") .. "/snippets/global.json"),
          gen_loader.from_lang()
        }
      }
    end
  }
}
