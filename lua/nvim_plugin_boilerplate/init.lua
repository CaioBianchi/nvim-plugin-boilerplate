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

return M
