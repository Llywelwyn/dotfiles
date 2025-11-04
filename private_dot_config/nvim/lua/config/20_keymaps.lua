-- 20_keymaps.lua

-- Helpers ====================================================
local nmap = function(lhs, rhs, desc)
  vim.keymap.set("n", lhs, rhs, { desc = desc })
end
local nmap_leader = function(lhs, rhs, desc)
  vim.keymap.set("n", "<Leader>" .. lhs, rhs, { desc = desc })
end
-- Keymaps ====================================================
-- stylua: ignore start
nmap('[p', '<Cmd>exe "put! " . v:register<CR>',                'put above')
nmap(']p', '<Cmd>exe "put "  . v:register<Cr>',                'put below')
nmap_leader('ei', '<Cmd>edit $MYVIMRC<CR>',                    'init.lua')
nmap_leader('aa', '<Cmd>lua vim.lsp.buf.code_action()<CR>',    'lsp code action')
nmap_leader('ar', '<Cmd>lua vim.lsp.buf.rename()<CR>',         'lsp rename')
nmap_leader('fi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', 'lsp find implementation')
nmap_leader('fr', '<Cmd>lua vim.lsp.buf.references()<CR>',     'lsp find references')

for i = 1, 6 do
  nmap_leader(i, i .. "<c-w>w", "move to " .. i)
end
nmap_leader(';', '<Cmd>vsplit<CR>', 'vsplit')
nmap_leader('-', '<Cmd>split<CR>', 'hsplit')

nmap_leader('j', '<Cmd>resize +10<CR>', 'bigger height')
nmap_leader('k', '<Cmd>resize -10<CR>', 'smaller height')
nmap_leader('l', '<Cmd>vertical resize +20<CR>', 'bigger width')
nmap_leader('h', '<Cmd>vertical resize -20<CR>', 'smaller width')
