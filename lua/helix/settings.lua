local M = {}

local DEFAULT = {
  transparent = false,

  styles = {
    commments = {},
    keywords  = {},
    functions = {},
    variables = {},
    types     = { bold = false },
    lsp       = { underline = false },
  },
}

function M.set(opts)
  if opts then
    M.opts = vim.tbl_deep_extend("force", DEFAULT, opts)
  else
    M.opts = DEFAULT
  end
end

M.set()

return M
