vim.loader.enable()

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if
      name == "nvim-treesitter" and (kind == "install" or kind == "update")
    then
      if not ev.data.active then
        vim.cmd.packadd("nvim-treesitter")
      end
      vim.cmd("TSUpdate")
    end
  end,
})

require("config.10_opts")
require("config.20_keymaps")
require("config.30_autocmds")
require("config.40_statusline")

vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    version = "main",
  },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
  { src = "https://github.com/nvim-mini/mini.icons" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/folke/lazydev.nvim" },
  { src = "https://github.com/seblyng/roslyn.nvim" },
  { src = "https://github.com/nvim-mini/mini.pairs" },
  {
    src = "https://github.com/saghen/blink.cmp",
    version = vim.version.range("1"),
  },
  { src = "https://github.com/aserowy/tmux.nvim" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/folke/which-key.nvim" },
  { src = "https://codeberg.org/andyg/leap.nvim" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/tpope/vim-sleuth" },
  { src = "https://github.com/stevearc/conform.nvim" },
  { src = "https://github.com/gbprod/yanky.nvim" },
  { src = "https://github.com/karb94/neoscroll.nvim" },
})

require("mini.icons").setup({})

require("treesitter-context").setup({})

require("mason").setup({
  registries = {
    "github:mason-org/mason-registry",
    "github:Crashdummyy/mason-registry",
  },
})
require("mason-lspconfig").setup({ ensure_installed = {} })
require("lazydev").setup({
  library = {
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  },
})
vim.lsp.config("roslyn", {
  on_attach = function()
    print("Roslyn attached.")
  end,
  settings = {
    ["csharp|inlay_hints"] = {
      csharp_enable_inlay_hints_for_implicit_object_creation = true,
      csharp_enable_inlay_hints_for_implicit_variable_types = true,
    },
    ["csharp|code_lens"] = {
      dotnet_enable_references_code_lens = true,
    },
  },
})
require("roslyn").setup()

require("mini.pairs").setup({})

require("blink.cmp").setup({
  keymap = { preset = "super-tab" },
  appearance = { nerd_font_variant = "mono" },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 0 },
  },
  sources = {
    default = { "lsp", "path", "buffer" },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  cmdline = {
    keymap = { preset = "inherit" },
    completion = { menu = { auto_show = true } },
  },
})

require("tmux").setup({
  copy_sync = {
    enable = true,
    ignore_buffers = { empty = false },
    redirect_to_clipboard = false,
    register_offset = 0,
    sync_clipboard = false,
    sync_registers = true,
    sync_registers_keymap_put = true,
    sync_registers_keymap_reg = true,
    sync_deletes = true,
    sync_unnamed = true,
  },
  navigation = {
    cycle_navigation = true,
    enable_default_keybindings = false,
    persist_zoom = false,
  },
  resize = {
    enable_default_keybindings = false,
    resize_step_x = 5,
    resize_step_y = 3,
  },
  swap = {
    cycle_navigation = false,
    enable_default_kebindings = false,
  },
})
do
  local t = require("tmux")
  -- stylua: ignore start
  vim.keymap.set("n", "<M-Left>",    t.move_left)
  vim.keymap.set("n", "<M-Right>",   t.move_right)
  vim.keymap.set("n", "<M-Up>",      t.move_top)
  vim.keymap.set("n", "<M-Down>",    t.move_bottom)
  vim.keymap.set("n", "<M-C-Left>",  t.resize_left)
  vim.keymap.set("n", "<M-C-Right>", t.resize_right)
  vim.keymap.set("n", "<M-C-Up>",    t.resize_top)
  vim.keymap.set("n", "<M-C-Down>",  t.resize_bottom)
  vim.keymap.set("n", "<M-S-Left>",  t.swap_left)
  vim.keymap.set("n", "<M-S-Right>", t.swap_right)
  vim.keymap.set("n", "<M-S-Up>",    t.swap_top)
  vim.keymap.set("n", "<M-S-Down>",  t.swap_bottom)
  -- stylua: ignore end
end

require("fzf-lua").setup({
  winopts = {
    preview = {
      vertical = "down:65%",
      flip_columns = 120,
    },
  },
  files = { git_icons = true },
})
-- stylua: ignore start
vim.keymap.set("n", '<leader>f"', "<cmd>FzfLua registers<CR>",       { desc = "fzf registers" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>",         { desc = "fzf buffers" })
vim.keymap.set("n", "<leader>fc", "<cmd>FzfLua commands<CR>",        { desc = "fzf commands" })
vim.keymap.set("n", "<leader>fe", "<cmd>FzfLua changes<CR>",         { desc = "fzf edits" })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>",           { desc = "fzf files" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>",       { desc = "fzf grep" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua command_history<CR>", { desc = "fzf cmd history" })
vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<CR>",         { desc = "fzf keymaps" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua oldfiles<CR>",        { desc = "fzf oldfiles" })
vim.keymap.set("n", "<leader>fs", "<cmd>FzfLua<CR>",                 { desc = "fzf something else" })
-- stylua: ignore end

do
  local i = require("mini.icons")
  require("which-key").setup({
    preset = "helix",
    delay = function(ctx)
      return ctx.plugin and 0 or 20
    end,
    spec = {
      { "<leader>f", group = "find" },
      { "<leader>g", group = "git" },
      { "<leader>c", group = "lsp actions", icon = i.get("lsp", "class") },
    },
  })
end
vim.keymap.set("n", "<leader>?", function()
  require("which-key").show({ global = true })
end, { desc = "show local keymaps" })

require("leap").opts.preview = function(ch0, ch1, ch2)
  return not (
    ch1:match("%s")
    or (ch0:match("%a") and ch1:match("%a") and ch2:match("%a"))
  )
end
require("leap").opts.on_beacons = function(targets, _, _)
  for _, t in ipairs(targets) do
    if t.label and t.beacon then
      t.beacon[1] = 0
    end
  end
end
vim.api.nvim_set_hl(0, "LeapBackdrop", { link = "Comment" })
require("leap").opts.equivalence_classes = {
  " \t\r\n",
  "([{",
  ")]}",
  "'\"`",
}
vim.keymap.set({ "n", "x", "o" }, "s", function()
  require("leap").leap({ target_windows = vim.api.nvim_list_wins() })
  if vim.fn.mode() == "v" then
    vim.cmd("normal! iw")
  end
end)
vim.keymap.set({ "n", "o" }, "gs", function()
  require("leap.remote").action({
    input = vim.fn.mode(true):match("o") and "" or "v",
  })
end)
vim.api.nvim_create_autocmd("User", {
  pattern = "RemoteOperationDone",
  group = vim.api.nvim_create_augroup("LeapRemote", {}),
  callback = function(event)
    if vim.v.operator == "y" and event.data.register == '"' then
      vim.cmd("normal! p")
    end
  end,
})

require("oil").setup({
  use_default_keymaps = false,
  view_options = {
    show_hidden = true,
  },
  keymaps = {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = "actions.select",
    ["<leader><leader>"] = "actions.preview",
    ["-"] = { "actions.parent", mode = "n" },
    ["="] = { "actions.open_cwd", mode = "n" },
    ["+"] = { "actions.cd", mode = "n" },
    ["<leader>;"] = { "actions.select", opts = { vertical = true } },
    ["<leader>-"] = { "actions.select", opts = { horizontal = true } },
    ["<leader>x"] = "actions.open_external",
    ["g."] = { "actions.toggle_hidden", mode = "n" },
  },
  float = {
    padding = 2,
    max_width = 0,
    max_height = 0,
    border = nil,
    preview_split = "auto",
  },
})
vim.keymap.set("n", "<leader>o", "<Cmd>Oil<CR>", { desc = "oil" })

require("gitsigns").setup({})
vim.keymap.set("n", "<leader>gb", function()
  require("gitsigns").blame_line()
end, { desc = "git blame current line" })
vim.keymap.set("n", "<leader>g]", function()
  require("gitsigns").nav_hunk("next")
end, { desc = "git next hunk" })
vim.keymap.set("n", "<leader>g[", function()
  require("gitsigns").nav_hunk("prev")
end, { desc = "git prev hunk" })
vim.keymap.set("n", "<leader>gp", function()
  require("gitsigns").preview_hunk_inline()
end, { desc = "git preview hunk" })

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
  format_on_save = { timeout_ms = 500 },
  formatters = {
    shfmt = {
      append_args = { "-i", "2" },
    },
  },
})
vim.keymap.set("", "<leader>af", function()
  require("conform").format({ async = true })
end, { desc = "format buffer" })

require("yanky").setup({
  preserve_cursor_position = { enabled = true },
})
-- stylua: ignore start
vim.keymap.set("n",          "y",          "<Plug>(YankyYank)",                    { desc = "yank" })
vim.keymap.set({ "n", "x" }, "p",          "<Plug>(YankyPutAfter)",                { desc = "put after" })
vim.keymap.set({ "n", "x" }, "P",          "<Plug>(YankyPutBefore)",               { desc = "put before" })
vim.keymap.set({ "n", "x" }, "[p",         "<Plug>(YankyPutIndentBeforeLinewise)", { desc = "put after line" })
vim.keymap.set({ "n", "x" }, "]p",         "<Plug>(YankyPutIndentAfterLinewise)",  { desc = "put before line" })
vim.keymap.set("n",          "<c-p>",      "<Plug>(YankyPreviousEntry)",           { desc = "previous yank" })
vim.keymap.set("n",          "<c-n>",      "<Plug>(YankyNextEntry)",               { desc = "next yank" })
vim.keymap.set({ "n", "x" }, "<leader>fy", "<Cmd>YankyRingHistory<CR>",            { desc = "yank history" })
-- stylua: ignore end

require("neoscroll").setup({
  duration_multiplier = 0.1,
})
