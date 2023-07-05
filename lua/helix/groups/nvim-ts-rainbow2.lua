local M = {}

function M.highlight(palette, opts)
  return {
    TSRainbowRed = { fg = palette.lilac },
    TSRainbowYellow = { fg = palette.lilac },
    TSRainbowBlue = { fg = palette.lilac },
    TSRainbowOrange = { fg = palette.lilac },
    TSRainbowGreen = { fg = palette.lilac },
    TSRainbowViolet = { fg = palette.lilac },
    TSRainbowCyan = { fg = palette.lilac },
  }
end

return M
