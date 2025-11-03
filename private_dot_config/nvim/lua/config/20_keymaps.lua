-- 20_keymaps.lua

-- Helpers ====================================================
local nmap = function(lhs, rhs, desc)
  vim.keymap.set('n', lhs, rhs, { desc = desc })
end
local nmap_leader = function(lhs, rhs, desc)
  vim.keymap.set('n', '<Leader>' .. lhs, rhs, { desc = desc })
end
-- Keymaps ====================================================
nmap('[p', '<Cmd>exe "put! " . v:register<CR>', 'Paste above')
nmap(']p', '<Cmd>exe "put "  . v:register<Cr>', 'Paste below')
nmap_leader('ei', '<Cmd>edit $MYVIMRC<CR>',     'init.lua')
