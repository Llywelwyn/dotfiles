require("config.lazy")

vim.g.mapleader       = ' '
vim.o.mouse           = ''
vim.o.mousescroll     = 'ver:25,hor:6'
vim.o.switchbuf       = 'usetab'
vim.o.undofile        = true

-- UI
vim.o.breakindent     = true
vim.o.breakindentopt  = 'list:-1'
vim.o.colorcolumn     = '+1'
vim.o.cursorline      = true
vim.o.linebreak       = true
vim.o.list            = true
vim.o.relativenumber  = true
vim.o.pumheight       = 10
vim.o.ruler           = false
vim.o.signcolumn      = 'yes'
vim.o.splitbelow      = true
vim.o.splitright      = true
vim.o.winborder       = 'single'
vim.o.wrap            = false
vim.o.cursorlineopt   = 'screenline,number'

-- Folds
vim.o.foldlevel       = 10
vim.o.foldmethod      = 'indent'
vim.o.foldnestmax     = 10
vim.o.foldtext        = ''

-- Editing
vim.o.autoindent      = true
vim.o.expandtab       = true
vim.o.ignorecase      = true
vim.o.incsearch       = true
vim.o.infercase       = true
vim.o.smartcase       = true
vim.o.smartindent     = true
vim.o.virtualedit     = 'block'
vim.o.iskeyword       = '@,48-57,_,192-255,-'
vim.o.tabstop         = 2
vim.o.shiftwidth      = 2

-- Keymaps
local nmap = function(lhs, rhs, desc)
  vim.keymap.set('n', lhs, rhs, { desc = desc })
end

local nmap_leader = function(lhs, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. lhs, rhs, { desc = desc })
end

nmap('[p', '<Cmd>exe "put! " . v:register<CR>', 'Paste above')
nmap(']p', '<Cmd>exe "put "  . v:register<Cr>', 'Paste below')
nmap_leader('ei', '<Cmd>edit $MYVIMRC<CR>',     'init.lua')
