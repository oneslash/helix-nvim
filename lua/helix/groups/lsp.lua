local M = {}

local base_diagnostic_map = {
  Error = "apricot",
  Hint = "silver",
  Info = "delta",
  Warn = "lightning",
}

local lsp_type_map = {
  builtinType = { fg = "white", bg = "none" },
  parameter = { fg = "lavender", bg = "none" },
  macro = { fg = "lilac", bg = "none" },
}

local lsp_mod_map = {
  ["enumMember.defaultLibrary"] = { fg = "white", bg = "none" },
  ["function.defaultLibrary"] = { fg = "white", bg = "none" },
  ["function.global"] = { fg = "white", bg = "none" },
  ["method.defaultLibrary"] = { fg = "white", bg = "none" },
  ["selfKeyword.defaultLibrary"] = { fg = "mint", bg = "none" },
  ["variable.defaultLibrary"] = { fg = "white", bg = "none" },
}

-- Helper function
local function hl(fg, bg, attrs)
  local highlight = {}
  if fg then highlight.fg = fg end
  if bg then highlight.bg = bg end
  if attrs then
    for k, v in pairs(attrs) do
      if v then highlight[k] = v end
    end
  end
  return highlight
end

function M.highlight(palette, opt)
  local highlights = {
    -- Diagnostic highlights
    DiagnosticTruncateLine = { fg = palette.fg, bold = true },
    DiagnosticInformation = { fg = palette.delta, bold = true },

    -- LSP UI highlights
    LspCodeLens = { fg = palette.comet },
    LspCodeLensSeparator = { fg = palette.comet },
    LspFloatWinBorder = { fg = palette.revolver },
    LspFloatWinNormal = hl(palette.lavender, palette.revolver),
    LspInlayHint = { link = "Comment" },

    -- LspReference highlights
    LspReferenceRead = hl(nil, palette.bg),
    LspReferenceText = hl(nil, palette.bg),
    LspReferenceWrite = hl(nil, palette.bg),

    -- others
    ProviderTruncateLine = { fg = palette.fg },
  }

  for level, color in pairs(base_diagnostic_map) do
    local key = "Diagnostic" .. level
    highlights[key] = { fg = palette[color] }

    local underline_key = "DiagnosticUnderline" .. level
    highlights[underline_key] = { sp = palette.apricot, undercurl = true }

    local floating_key = "LspDiagnosticsFloating" .. level
    local floating_color = level == "Info" and "delta" or color
    highlights[floating_key] = { fg = palette[floating_color] }
  end

  for type_name, attrs in pairs(lsp_type_map) do
    local key = "@lsp.type." .. type_name
    highlights[key] = hl(
      palette[attrs.fg],
      attrs.bg == "none" and palette.none or palette[attrs.bg]
    )
  end

  for mod_name, attrs in pairs(lsp_mod_map) do
    local key = "@lsp.typemod." .. mod_name
    highlights[key] = hl(
      palette[attrs.fg],
      attrs.bg == "none" and palette.none or palette[attrs.bg]
    )
  end

  highlights["@lsp.type.keyword"] = { link = "Keyword" }
  highlights["@lsp.type.operator"] = { link = "Operator" }
  highlights["@lsp.type.property"] = { link = "@property" }
  highlights["@lsp.type.variable"] = { link = "@lsp.type.variable" }
  highlights["@lsp.typemod.method.reference"] = { link = "Function" }
  highlights["@lsp.typemod.method.trait"] = { link = "Function" }
  highlights["@lsp.typemod.variable.readonly"] = { link = "Constant" }

  return highlights
end

return M
