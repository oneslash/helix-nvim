local M = {}

function M.highlight(palette, opts)
  return {

    IndentBlanklineSpaceChar = { fg = palette.lilac, nocombine = true },
    IndentBlanklineChar = { fg = palette.lilac, nocombine = true },
    IndentBlanklineContextStart = { fg = palette.white, underline = true },
    IndentBlanklineContextChar = { fg = palette.white, nocombine = true },
    IndentBlanklineSpaceCharBlankline = { fg = palette.lilac, nocombine = true },
  }
end

return M
