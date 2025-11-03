-- init.lua
--
-- Config structure
-- ├ init.lua                Bootstraps config (you are here)
-- ├ lua/
-- ├── config/               Files sourced during startup are in here
-- ├──── 00_lazy.lua          Bootstraps lazy.nvim
-- ├──── 10_opts.lua          Built-in Nvim options
-- ├──── 20_keymaps.lua       Custom keymaps
-- ├──── 30_autocmds.lua      Custom autocmds
-- ├── plugin/               Plugins for lazy.nvim are in here
-- ├──── 00_colorscheme.lua   Sets theme
-- ├──── 01_whichkey.lua      Displays keymaps on input
-- ├──── 03_treesitter.lua    Does anybody know what this does?
-- ├──── 05_fzf.lua           Pickers with fzf-lua
-- ├──── 10_hop.lua           Enables hopping to words in the current buffer
-- ├──── 11_eyeliner.lua      Highligts unique chars in words on f/F
-- ├──── 15_lsp.lua           Mason, LSP configurations
-- ├──── 20_completion.lua    Autocompletion with blink.cmp, and mini.snippets
-- ├──── 25_git.lua           Gitsigns
-- ├──── 30_formatting.lua    vim-sleuth and conform formatting configs
-- ├──── 35_yanky.lua         Yank and Put improvements
-- ├──── 40_ai.lua            Github Copilot integration, CodeCompanion,etc.
-- ├ snippets/               Snippets definitions are in here
-- ├── package.json           Snippet repository metadata
-- ├── global.json            Global text snippets
-- ├── lua.json               Lua-specific snippets
-- ├── etc.                   ... and the same for any other language-specific snippets.

require("config.00_lazy")
require("config.10_opts")
require("config.20_keymaps")
require("config.30_autocmds")
