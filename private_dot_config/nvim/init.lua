-- init.lua
--
-- Configuration Structure:
-- ├ init.lua                -- Bootstraps config (you are here)
-- ├ lua/
-- │   ├ colors/             -- colorscheme definitions
-- │   │   ├ colibri.lua         -- the Helix theme
-- │   ├ config/             -- Startup configuration files
-- │   │   ├ 00_lazy.lua         -- Bootstraps lazy.nvim
-- │   │   ├ 10_opts.lua         -- Built-in Neovim options
-- │   │   ├ 20_keymaps.lua      -- Custom keymaps
-- │   │   ├ 30_autocmds.lua     -- Custom autocommands
-- │   │   └ 40_statusline.lua   -- Minimal statusline
-- │   └ plugin/             -- Plugin configurations for lazy.nvim
-- │       ├ 00_treesitter.lua   -- Treesitter configuration
-- │       ├ 01_lsp.lua          -- Mason and LSP configurations
-- │       ├ 02_completion.lua   -- Autocompletion (blink.cmp, mini.snippets)
-- │       ├ 03_tmux.lua         -- Tmux integrations
-- │       ├ 04_fzflua.lua       -- Fuzzy pickers with fzf-lua
-- │       ├ 05_whichkey.lua     -- Displays keymaps on input
-- │       ├ 06_leap.lua         -- Enables word hopping in buffer
-- │       ├ 07_oil.lua          -- Treat filesystem as a buffer
-- │       ├ 08_ai.lua           -- AI integrations
-- │       ├ 09_gitsigns.lua     -- Git integration (Gitsigns)
-- │       ├ 10_conform.lua      -- Formatting (vim-sleuth, conform)
-- │       ├ 11_yanky.lua        -- Yank and put enhancements
-- │       ├ 12_neoscroll.lua    -- Animations
-- │       ├ 13_easyalign.lua    -- Visual mode: align around "=" with ga=
-- │       └ 14_obsidian.lua     -- Obsidian vault integration
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
