local M = {}

M.check_prereqs = function ()
  local has_autojump = vim.fn.executable 'autojump' == 1
  if not has_autojump then
    error 'autojump executable not found'
  end
end

return M
