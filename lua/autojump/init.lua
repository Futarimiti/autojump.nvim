local M = {}

M.setup = function (raw)
  local c = require 'autojump.config'
  local user = c.validate(raw)

  local fs = require 'autojump.fs'
  local cmd = require 'autojump.commands'
  fs.init_dirs(user)
  cmd.setup_commands(user)
end

return M
