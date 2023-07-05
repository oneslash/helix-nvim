local M = {}

function M.highlight(palette, opt)
  return {
    DiagnosticError = { fg = palette.apricot },
    DiagnosticHint = { fg = palette.silver },
    DiagnosticInfo = { fg = palette.delta },
    DiagnosticWarn = { fg = palette.lightning },
    DiagnosticInformation = { fg = palette.delta, bold = true },
    DiagnosticTruncateLine = { fg = palette.fg, bold = true },
    DiagnosticUnderlineError = { sp = palette.apricot, undercurl = true },
    DiagnosticUnderlineHint = { sp = palette.apricot, undercurl = true },
    DiagnosticUnderlineInfo = { sp = palette.apricot, undercurl = true },
    DiagnosticUnderlineWarn = { sp = palette.apricot, undercurl = true },
    LspCodeLens = { fg = palette.comet },
    LspCodeLensSeparator = { fg = palette.comet },
    LspDiagnosticsFloatingError = { fg = palette.apricot },
    LspDiagnosticsFloatingHint = { fg = palette.silver },
    LspDiagnosticsFloatingInfor = { fg = palette.delta },
    LspDiagnosticsFloatingWarn = { fg = palette.lightning },
    LspFloatWinBorder = { fg = palette.revolver },
    LspFloatWinNormal = { fg = palette.lavender, bg = palette.revolver },
    LspInlayHint = { link = "Comment" },
    LspReferenceRead = { fg = palette.none, bg = palette.bg },
    LspReferenceText = { fg = palette.none, bg = palette.bg },
    LspReferenceWrite = { fg = palette.none, bg = palette.bg },
    ProviderTruncateLine = { fg = palette.fg },
    ["@lsp.type.builtinType"] = { fg = palette.white, bg = palette.none },
    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { fg = palette.lavender, bg = palette.none },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@lsp.type.variable" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = palette.white, bg = palette.none },
    ["@lsp.typemod.function.defaultLibrary"] = { fg = palette.white, bg = palette.none },
    ["@lsp.typemod.function.global"] = { fg = palette.white, bg = palette.none },
    ["@lsp.typemod.method.defaultLibrary"] = { fg = palette.white, bg = palette.none },
    ["@lsp.typemod.method.reference"] = { link = "Function" },
    ["@lsp.typemod.method.trait"] = { link = "Function" },
    ["@lsp.typemod.selfKeyword.defaultLibrary"] = { fg = palette.mint, bg = palette.none },
    ["@lsp.typemod.variable.defaultLibrary"] = { fg = palette.white, bg = palette.none },
    ["@lsp.typemod.variable.readonly"] = { link = "Constant" },
    ["@lsp.type.macro"] = { fg = palette.lilac, bg = palette.none }

  }
end

return M
