package = 'nvim-plugin-boilerplate'
version = 'scm-1'
source = {
  url = 'git+https://github.com/caiobianchi/nvim-plugin-boilerplate.git',
}
description = {
  summary = 'Minimal boilerplate for a Lua-based Neovim plugin',
  homepage = 'https://github.com/caiobianchi/nvim-plugin-boilerplate',
  license = 'MIT',
}
dependencies = {
  'lua >= 5.1',
}
build = {
  type = 'builtin',
  modules = {
    ['nvim_plugin_boilerplate'] = 'lua/nvim_plugin_boilerplate/init.lua',
  },
}
