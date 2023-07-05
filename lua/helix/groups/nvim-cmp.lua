local M = {}

function M.highlight(palette, opts)
  return {
    CmpItemAbbr = { fg = palette.sirocco },
    CmpItemAbbrDefault = { fg = palette.bg },
    CmpItemAbbrDeprecated = { fg = palette.sirocco },
    CmpItemAbbrMatch = { fg = palette.white },
    CmpItemAbbrMatchFuzzy = { fg = palette.white },
    CmpItemKind = { fg = palette.lightning },
    CmpItemKindClass = { link = "@type" },
    CmpItemKindColor = { link = "@constant" },
    CmpItemKindConstant = { link = "@constant" },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindEnum = { link = "@type" },
    CmpItemKindEnumMember = { link = "@field" },
    CmpItemKindEvent = { link = "@type" },
    CmpItemKindField = { link = "@field" },
    CmpItemKindFile = { link = "@text.uri" },
    CmpItemKindFolder = { link = "@constant" },
    CmpItemKindFunction = { link = "@function" },
    CmpItemKindInterface = { link = "@type" },
    CmpItemKindKeyword = { link = "@keyword" },
    CmpItemKindMethod = { link = "@method" },
    CmpItemKindModule = { link = "@namespace" },
    CmpItemKindOperator = { link = "@operator" },
    CmpItemKindProperty = { link = "@property" },
    CmpItemKindReference = { link = "@type" },
    CmpItemKindSnippet = { link = "@constant" },
    CmpItemKindStruct = { link = "@type" },
    CmpItemKindText = { link = "@text" },
    CmpItemKindTypeParameter = { link = "@type" },
    CmpItemKindUnit = { link = "@constant" },
    CmpItemKindValue = { link = "@constant" },
    CmpItemKindVariable = { link = "@variable" },
    CmpItemMenuDefault = { fg = palette.silver },
  }
end

return M
