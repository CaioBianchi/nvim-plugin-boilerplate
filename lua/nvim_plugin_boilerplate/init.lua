local M = {}

local defaults = {
  message = 'Hello from nvim-plugin-boilerplate',
}

M.config = vim.deepcopy(defaults)

function M.setup(opts)
  M.config = vim.tbl_deep_extend('force', vim.deepcopy(defaults), opts or {})
end

function M.hello()
  vim.notify(M.config.message, vim.log.levels.INFO, { title = 'nvim-plugin-boilerplate' })
end

function M.toggle_relative_number()
  local current = vim.wo.relativenumber

  vim.wo.relativenumber = not current

  local message = vim.wo.relativenumber and 'Relative number enabled' or 'Relative number disabled'
  vim.notify(message, vim.log.levels.INFO, { title = 'nvim-plugin-boilerplate' })
end

return M
