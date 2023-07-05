local M = {}

function M.highlight(palette, opts)
  return {
    Comment = { fg = palette.sirocco, bg = palette.none },
    Constant = { fg = palette.white, bg = palette.none },
    String = { fg = palette.silver, bg = palette.none },
    Character = { fg = palette.honey, bg = palette.none },
    Number = { fg = palette.chamois, bg = palette.none },
    Boolean = { fg = palette.almond, bg = palette.none },
    Float = { fg = palette.chamois, bg = palette.none },
    -- Identifier
    Identifier = { fg = palette.lavender, bg = palette.none },
    Function = { fg = palette.white, bg = palette.none },

    -- Statement
    Statement = { fg = palette.almond, bg = palette.none },
    Conditional = { fg = palette.almond, bg = palette.none },
    Repeat = { fg = palette.almond, bg = palette.none },
    Label = { fg = palette.almond, bg = palette.none },
    Operator = { fg = palette.lilac, bg = palette.none },
    Keyword = { fg = palette.almond, bg = palette.none },
    Exception = { fg = palette.almond, bg = palette.none },

    -- Preproc
    PreProc = { fg = palette.lilac, bg = palette.none },   -- generic Preprocessor
    Include = { fg = palette.almond, bg = palette.none },  -- preprocessor #include
    Define = { fg = palette.almond, bg = palette.none },   -- preprocessor #define
    Macro = { fg = palette.lilac, bg = palette.none },     -- same as Define
    PreCondit = { fg = palette.lilac, bg = palette.none }, -- preprocessor #if, #else, #endif, etc.

    -- Type
    Type = { fg = palette.white, bg = palette.none },
    StorageClass = { fg = palette.white, bg = palette.none },
    Structure = { fg = palette.white, bg = palette.none },
    Typedef = { fg = palette.white, bg = palette.none },

    -- Special
    Special = { fg = palette.honey, bg = palette.none },
    SpecialChar = { fg = palette.honey, bg = palette.none },
    Tag = { fg = palette.almond, bg = palette.none },
    Delimiter = { fg = palette.lavender, bg = palette.none },
    SpecialComment = { fg = palette.sirocco, bg = palette.none },
    Debug = { fg = "#634450", bg = palette.none },

    Error = { fg = palette.apricot, bg = palette.none },
    Ignore = { fg = palette.sirocco, bg = palette.orange },
    Underlined = { fg = palette.white, bg = palette.none },
    Todo = { fg = palette.sirocco, bg = palette.none },

  }
end

return M
