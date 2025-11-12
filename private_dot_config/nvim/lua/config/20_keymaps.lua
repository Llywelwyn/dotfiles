-- 20_keymaps.lua
---@diagnostic disable: unused-local, unused-function
-- stylua: ignore start

local map = function(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { noremap = true, desc = desc })
end

local nop = function(lhs) map({ "n", "v" }, lhs, "<nop>", "") end
local nmap = function(lhs, rhs, desc) map("n", lhs, rhs, desc) end
local xmap = function(lhs, rhs, desc) map("x", lhs, rhs, desc) end

local nmap_leader = function(lhs, rhs, desc) nmap("<Leader>" .. lhs, rhs, desc) end

nop('<C-w>s')
nop('<C-w>v')

nmap_leader(';', '<Cmd>vsplit<CR>', 'vsplit')
nmap_leader('-', '<Cmd>split<CR>', 'hsplit')

nmap_leader('ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>',    'lsp code action')
nmap_leader('ci', '<Cmd>lua vim.lsp.buf.implementation()<CR>', 'lsp find implementation')
nmap_leader('cr', '<Cmd>lua vim.lsp.buf.references()<CR>',     'lsp find references')
nmap_leader('cR', '<Cmd>lua vim.lsp.buf.rename()<CR>',         'lsp rename')

local c = function(rhs)
  return function()
    local count = vim.v.count1
    for _ = 1, count do
      vim.cmd(rhs)
    end
  end
end

nmap(">", c("normal! >>"), "indent")
nmap("<", c("normal! <<"), "dedent")
xmap(">", ">gv",           "indent and reselect")
xmap("<", "<gv",           "dedent and reselect")
