-- stylua: ignore start
local p = {
  none      = "NONE",
  fg        = "#a4a0e8",
  bg        = "NONE",

  bg_l      = "NONE",
  accent    = "#dbbfef",

  white     = "#ffffff",
  gray_l    = "#cccccc",
  gray      = "#697C81",
  gray_d    = "#5a5977",
  black     = "#281733",

  pink      = "#f22c86",
  red       = "#f47868",
  orange    = "#efba5d",
  green     = "#9ff28f",
  green_d   = "#35bf86",
  yellow    = "#ffcd1c",
  chamois   = "#E8DCA0",
  almond    = "#eccdba",
  blue      = "#61afef",
  delta     = "#6F44F0",
  selection = "#540099",
}

local function l(name) return { link = name } end

local highlights = {
    -- Core UI
    Normal                   = { fg = p.fg, bg = p.bg },
    NormalNC                 = l("Normal"),
    NormalFloat              = { fg = p.fg, bg = p.black },
    Visual                   = { fg = p.none, bg = p.selection },
    VisualNOS                = { fg = p.fg, bg = p.none },
    FloatBorder              = l("NormalFloat"),
    WinSeparator             = { fg = p.bg_l },

    -- Cursor / lines
    Cursor                   = { fg = p.bg, bg = p.white },
    CursorIM                 = l("Cursor"),
    lCursor                  = l("Cursor"),
    CursorLine               = { bg = p.bg_l },
    ColorColumn              = l("CursorLine"),
    CursorColumn             = l("CursorLine"),
    CursorLineNr             = { fg = p.white },

    -- Gutter
    Folded                   = { fg = p.gray, bg = p.none },
    LineNr                   = { fg = p.gray, bg = p.none },
    NonText                  = l("LineNr"),
    SpecialKey               = l("LineNr"),

    -- Menus / popups
    Pmenu                    = { fg = p.white, bg = p.black },
    PmenuSel                 = { fg = p.none, bg = p.bg_l },
    PmenuSbar                = { fg = p.none, bg = p.black },
    PmenuThumb               = { fg = p.none, bg = p.white },
    WildMenu                 = { fg = p.black, bg = p.blue },
    Terminal                 = l("Pmenu"),

    -- Tabs
    TabLine                  = l("LineNr"),
    TabLineSel               = { fg = p.white, bg = p.none },
    TabLineFill              = { fg = p.none, bg = p.black },

    -- Bars
    WinBar                   = { fg = p.fg, bg = p.bg },
    WinBarNC                 = { fg = p.gray, bg = p.bg },

    -- Status
    StatusLine               = { fg = p.white, bg = p.bg_l },
    StatusLineNC             = { fg = p.gray, bg = p.none },

    -- Search / match
    IncSearch                = { fg = p.yellow, bg = p.gray },
    CurSearch                = l("IncSearch"),
    Search                   = { fg = p.black, bg = p.yellow },
    QuickFixLine             = { fg = p.black, bg = p.yellow },
    MatchParen               = { fg = p.none, bg = p.gray_d },

    -- Diff
    DiffAdd                  = { fg = p.black, bg = p.green },
    DiffChange               = { fg = p.yellow, bg = p.none },
    DiffDelete               = { fg = p.bg_l, bg = p.red },
    DiffText                 = { fg = p.black, bg = p.yellow },
    DiffAdded                = { fg = p.green },
    DiffNewFile              = l("DiffAdded"),
    DiffRemoved              = { fg = p.red },
    DiffChanged              = { fg = p.blue },
    DiffFile                 = l("DiffChanged"),
    DiffOldFile              = { fg = p.yellow },
    DiffLine                 = { fg = p.bg_l },
    DiffIndexLine            = { fg = p.green_d },

    -- Messages
    Title                    = { fg = p.white },
    ErrorMsg                 = { fg = p.red, bg = p.none },
    WarningMsg               = { fg = p.yellow, bg = p.none },
    Question                 = { fg = p.delta, bg = p.none },

    -- Spell
    SpellBad                 = { undercurl = true },
    SpellCap                 = l("SpellBad"),
    SpellLocal               = l("SpellBad"),
    SpellRare                = l("SpellBad"),

    -- Syntax
    Comment                  = { fg = p.gray, bg = p.none },
    SpecialComment           = l("Comment"),
    Ignore                   = l("Comment"),
    Todo                     = l("Comment"),
    Constant                 = { fg = p.blue, bg = p.none },
    String                   = { fg = p.gray_l, bg = p.none },
    Character                = { fg = p.orange, bg = p.none },
    Number                   = { fg = p.chamois, bg = p.none },
    Float                    = l("Number"),
    Boolean                  = { fg = p.almond, bg = p.none },
    Identifier               = { fg = p.fg, bg = p.none },
    Delimiter                = l("Identifier"),
    Function                 = { fg = p.accent, bg = p.none, bold = true },
    Statement                = { fg = p.almond, bg = p.none },
    Conditional              = l("Statement"),
    Repeat                   = l("Statement"),
    Label                    = l("Statement"),
    Exception                = l("Statement"),
    Include                  = l("Statement"),
    Define                   = l("Statement"),
    Tag                      = l("Statement"),
    Operator                 = { fg = p.white, bg = p.none },
    Keyword                  = { fg = p.almond, bg = p.none },
    PreProc                  = { fg = p.accent, bg = p.none },
    Macro                    = l("PreProc"),
    PreCondit                = l("PreProc"),
    Type                     = { fg = p.white, bg = p.none },
    StorageClass             = l("Type"),
    Structure                = l("Type"),
    Typedef                  = l("Type"),
    Special                  = { fg = p.accent, bg = p.none },
    SpecialChar              = l("Special"),
    Underlined               = { fg = p.white, bg = p.none },
    Debug                    = { fg = "#634450", bg = p.none },
    Conceal                  = { fg = p.gray, bg = p.none },
    Directory                = { fg = p.blue, bg = p.none },

    -- Diagnostics
    DiagnosticError          = { fg = p.red },
    DiagnosticHint           = { fg = p.gray_l },
    DiagnosticInfo           = { fg = p.delta },
    DiagnosticWarn           = { fg = p.yellow },
    DiagnosticUnderlineError = { sp = p.red, undercurl = true },
    DiagnosticUnderlineHint  = l("DiagnosticUnderlineError"),
    DiagnosticUnderlineInfo  = l("DiagnosticUnderlineError"),
    DiagnosticUnderlineWarn  = l("DiagnosticUnderlineError"),

    -- Lsp UI
    LspInlayHint             = l("Comment"),
    LspCodeLens              = { fg = p.gray_d },
    LspCodeLensSeparator     = l("LspCodeLens"),
    LspReferenceText         = { fg = p.none, bg = p.bg },
    LspReferenceRead         = l("LspReferenceText"),
    LspReferenceWrite        = l("LspReferenceText"),

    -- Lsp captures
    ["@lsp.typemod.selfKeyword.defaultLibrary"] = { fg = p.green, bg = p.none },
    ["@lsp.type.parameter"]                     = l("Identifier"),
    ["@lsp.type.variable"]                      = l("Identifier"),
    ["@lsp.typemod.variable.defaultLibrary"]    = l("Identifier"),
    ["@lsp.typemod.enumMember.defaultLibrary"]  = l("Constant"),
    ["@lsp.typemod.variable.readonly"]          = l("Constant"),
    ["@lsp.type.operator"]                      = l("Operator"),
    ["@lsp.type.property"]                      = l("Operator"),
    ["@lsp.type.keyword"]                       = l("Keyword"),
    ["@lsp.type.macro"]                         = l("PreProc"),
    ["@lsp.type.builtinType"]                   = l("Type"),
    ["@lsp.typemod.function.defaultLibrary"]    = l("Function"),
    ["@lsp.typemod.function.global"]            = l("Function"),
    ["@lsp.typemod.method.defaultLibrary"]      = l("Function"),
    ["@lsp.typemod.method.reference"]           = l("Function"),
    ["@lsp.typemod.method.trait"]               = l("Function"),
}
-- stylua: ignore end

if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("hi clear")
  vim.cmd.syntax("reset")
end

vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "colibri"

for name, value in pairs(highlights) do
  vim.api.nvim_set_hl(0, name, value)
end
