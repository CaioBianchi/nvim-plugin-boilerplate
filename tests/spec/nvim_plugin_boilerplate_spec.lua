describe('nvim-plugin-boilerplate', function()
  it('applies user configuration in setup', function()
    local plugin = require('nvim_plugin_boilerplate')

    plugin.setup({ message = 'Test message' })

    assert.are.equal('Test message', plugin.config.message)
  end)

  it('toggles relative numbers in the current window', function()
    local plugin = require('nvim_plugin_boilerplate')

    vim.wo.relativenumber = false
    plugin.toggle_relative_number()
    assert.is_true(vim.wo.relativenumber)

    plugin.toggle_relative_number()
    assert.is_false(vim.wo.relativenumber)
  end)
end)
