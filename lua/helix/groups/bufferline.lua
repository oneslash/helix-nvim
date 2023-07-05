local M = {}

function M.highlight(palette, opts)
  return {
    BufferLineBufferVisible = { fg = palette.lavender, bg = palette.bg },
    BufferLineBufferSelected = { fg = palette.apricot, bg = palette.revolver, bold = true },
    BufferLineTab = { fg = palette.lilac, bg = palette.bg },
    BufferLineTabSelected = { fg = palette.white, bg = palette.revolver },
    BufferLineTabClose = { fg = palette.apricot, bg = palette.bg },
    BufferLineIndicatorSelected = { fg = palette.white, bg = palette.bg },
    BufferLineCloseButtonVisible = { fg = palette.bossanova, bg = palette.bg },
    BufferLineCloseButtonSelected = { fg = palette.apricot, bg = palette.bg },
    BufferLineModifiedVisible = { fg = palette.lavender, bg = palette.bg },
    BufferLineModifiedSelected = { fg = palette.mint, bg = palette.bg },
    BufferLineError = { fg = palette.lightning, bg = palette.lightning },
    BufferLineErrorDiagnostic = { fg = palette.lightning, bg = palette.lightning },
  }
end

return M
