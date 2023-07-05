local M = {}

function M.highlight(palette, opts)
  return {
    NeoTreeDirectoryIcon = { fg = palette.blue },
    NeoTreeRootName = { fg = palette.white, bold = true },
    NeoTreeDirectoryName = { fg = palette.white },
    NeoTreeFileName = { fg = palette.white },
    NeoTreeFileIcon = { fg = palette.white },
    NeoTreeFileNameOpened = { fg = palette.mint },
    NeoTreeIndentMarker = { fg = palette.comet },
    NeoTreeGitAdded = { fg = palette.mint },
    NeoTreeGitConflict = { fg = palette.apricot },
    NeoTreeGitModified = { fg = palette.honey },
    NeoTreeGitUntracked = { fg = palette.lightning },
    NeoTreeNormal = { bg = palette.bg },
    NeoTreeNormalNC = { bg = palette.bg },
    NeoTreeSymbolicLinkTarget = { fg = palette.lavender },
    NeoTreeTitleBar = { fg = palette.white, bg = palette.bg },
    NeoTreeTabActive = { fg = palette.white, bg = palette.fg },
    NeoTreeTabInactive = { fg = palette.white, bg = palette.bg },
    NeoTreeTabSeparatorActive = { fg = palette.white, bg = palette.bg },
    NeoTreeTabSeparatorInactive = { fg = palette.white, bg = palette.bg },
  }
end

return M
