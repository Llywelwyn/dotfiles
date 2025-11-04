-- 40_statusline.lua

local cmp = {}

function _G._statusline_component(name)
  return cmp[name]()
end

function cmp.window()
  return vim.api.nvim_win_get_number(0)
end

local statusline = {
  '^%{%v:lua._statusline_component("window")%} ',
  "%r",
  "%m",
  "%=",
}

vim.o.statusline = table.concat(statusline, "")
