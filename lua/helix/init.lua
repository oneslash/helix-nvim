C = {}
local M = {}

function M.setup(opts)
  local settings = require("helix.settings")
  if opts then
    settings.set(opts)
  end
end

function M.load()
  local settings = require("helix.settings")
  local opts = settings.opts

  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command "hi clear"
    vim.cmd.syntax "reset"
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "helix"

  local util = require("helix.utils")
  local palette = require("helix.colors")
  local groups = require("helix.groups")

  for _, group in ipairs(groups) do
    group = group.highlight(palette, opts)
    util.initialise(group)
  end
end

return M
