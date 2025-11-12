-- 20_keymaps.lua
---@diagnostic disable: unused-local, unused-function
-- stylua: ignore start

local nmap = function(lhs, rhs, desc)
  vim.keymap.set("n", lhs, rhs, { desc = desc })
end

local nmap_leader = function(lhs, rhs, desc)
  vim.keymap.set("n", "<Leader>" .. lhs, rhs, { desc = desc })
end

nmap_leader('ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>',    'lsp code action')
nmap_leader('ci', '<Cmd>lua vim.lsp.buf.implementation()<CR>', 'lsp find implementation')
nmap_leader('cr', '<Cmd>lua vim.lsp.buf.references()<CR>',     'lsp find references')
nmap_leader('cR', '<Cmd>lua vim.lsp.buf.rename()<CR>',         'lsp rename')

nmap_leader(';', '<Cmd>vsplit<CR>', 'vsplit')
nmap_leader('-', '<Cmd>split<CR>', 'hsplit')
