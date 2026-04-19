# nvim-plugin-boilerplate

Minimal Lua boilerplate for a Neovim plugin.

## Structure

- `lua/nvim_plugin_boilerplate/init.lua`: main plugin module
- `plugin/nvim-plugin-boilerplate.lua`: Neovim runtime entrypoint

## Features

- `setup()` function for user configuration
- Example user command: `:NvimPluginBoilerplateHello`
- Example Lua API: `require("nvim_plugin_boilerplate").hello()`

## Installation

### lazy.nvim

```lua
{
  "your-name/nvim-plugin-boilerplate",
  config = function()
    require("nvim_plugin_boilerplate").setup({
      message = "Hello from my plugin",
    })
  end,
}
```

## Development

The plugin command is defined in `plugin/`, and the implementation lives in `lua/`.

Rename the project directory, Lua module, and command names to match your plugin before publishing.

## Testing

This boilerplate includes a minimal `plenary.nvim` test setup.

Run the test suite from Neovim with:

```sh
nvim --headless -u NONE -c "set rtp+=.,./.tests/plenary.nvim" -c "luafile tests/minimal_init.lua" -c "PlenaryBustedDirectory tests/spec { minimal_init = 'tests/minimal_init.lua' }" -c qa
```

The command above assumes `plenary.nvim` is available at `.tests/plenary.nvim`.
