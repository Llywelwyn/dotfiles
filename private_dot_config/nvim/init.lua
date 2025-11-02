-- init.lua
--
-- Config structure
-- ├ init.lua                Bootstraps config (you are here)
-- ├ lua/
-- ├── config/               Files sourced during startup are in here
-- ├──── 00_lazy.lua          Bootstraps lazy.nvim
-- ├──── 10_opts.lua          Built-in Nvim options
-- ├──── 20_keymaps.lua       Custom keymaps
-- ├── plugin/               Plugins for lazy.nvim are in here
-- ├──── 00_colorscheme.lua   Sets theme
-- ├──── 10_hop.lua           Enables hopping to words in the current buffer
-- ├──── 20_completion.lua    Autocompletion with mini.completion, and mini.snippets
-- ├ snippets/               Snippets definitions are in here
-- ├── global.json            Global text snippets

require("config.00_lazy")
require("config.10_opts")
require("config.20_keymaps")

