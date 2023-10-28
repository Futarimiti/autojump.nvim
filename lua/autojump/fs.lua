local M = {}

M.init_idrs = function (user)
  local data_dir = user.data_dir
  vim.fn.mkdir(data_dir, 'p')
  -- make others?
end

return M
