local typecheck = function (conf)
  vim.validate
  { data_dir = { conf.data_dir, 'string' }
  }
end

local defaults =
{ data_dir = vim.fn.stdpath('data') .. '/autojump'
}

local M = {}

M.validate = function (raw)
  typecheck(defaults)

  local user = raw or {}
  vim.validate { config = { user, 'table' } }

  local ret = vim.tbl_deep_extend('force', defaults, raw)
  typecheck(ret)
  return ret
end

return M
