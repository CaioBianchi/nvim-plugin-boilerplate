if vim.g.loaded_nvim_plugin_boilerplate then
  return
end

vim.g.loaded_nvim_plugin_boilerplate = true

vim.api.nvim_create_user_command('NvimPluginBoilerplateHello', function()
  require('nvim_plugin_boilerplate').hello()
end, {
  desc = 'Show the plugin boilerplate greeting',
})

vim.api.nvim_create_user_command('NvimPluginBoilerplateToggleRelativeNumber', function()
  require('nvim_plugin_boilerplate').toggle_relative_number()
end, {
  desc = 'Toggle relative line numbers in the current window',
})
