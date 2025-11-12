-- init.lua
--
-- Configuration Structure:
-- ├ init.lua                -- Bootstraps config (you are here)
-- ├ lua/
-- │   ├ config/             -- Startup configuration files
-- │   │   ├ 00_lazy.lua         -- Bootstraps lazy.nvim
-- │   │   ├ 10_opts.lua         -- Built-in Neovim options
-- │   │   ├ 20_keymaps.lua      -- Custom keymaps
-- │   │   ├ 30_autocmds.lua     -- Custom autocommands
-- │   │   └ 40_statusline.lua   -- Minimal statusline, showing win num
-- │   └ plugin/             -- Plugin configurations for lazy.nvim
-- │       ├ 00_colorscheme.lua  -- Sets colorscheme/theme
-- │       ├ 01_whichkey.lua     -- Displays keymaps on input
-- │       ├ 03_treesitter.lua   -- Treesitter configuration
-- │       ├ 05_fzf.lua          -- Fuzzy pickers with fzf-lua
-- │       ├ 10_hop.lua          -- Enables word hopping in buffer
-- │       ├ 11_eyeliner.lua     -- Highlights unique characters for f/F
-- │       ├ 15_lsp.lua          -- Mason and LSP configurations
-- │       ├ 18_align.lua        -- Visual mode: align around "=" with ga=
-- │       ├ 20_completion.lua   -- Autocompletion (blink.cmp, mini.snippets)
-- │       ├ 25_git.lua          -- Git integration (Gitsigns)
-- │       ├ 30_formatting.lua   -- Formatting (vim-sleuth, conform)
-- │       ├ 35_yanky.lua        -- Yank and put enhancements
-- │       ├ 38_oil.lua          -- Treat filesystem as a buffer
-- │       ├ 40_ai.lua           -- AI integrations
-- │       └ 45_tmux.lua         -- Tmux integrations
-- └ snippets/               -- Snippet definitions
--     ├ package.json            -- Snippet repository metadata
--     ├ global.json             -- Global text snippets
--     ├ lua.json                -- Lua-specific snippets
--     └ etc.                    -- Other language-specific snippets

require("config.00_lazy")
require("config.10_opts")
require("config.20_keymaps")
require("config.30_autocmds")
require("config.40_statusline")

vim.cmd.colorscheme("colibri")
