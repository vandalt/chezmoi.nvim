local base = require "chezmoi.commands.__base"
local util = require "chezmoi.util"

local M = {}

---@param opts Options
function M.execute(opts)
  opts = opts or {}
  opts.targets = vim.tbl_flatten { opts.targets or {} }
  opts.args = util.__normalize_args(opts.args)
  opts.cmd = nil

  return base.execute(vim.tbl_deep_extend("force", { cmd = "source-path" }, opts))
end

return M
