# nvim-plugin-boilerplate

Minimal Lua boilerplate for a Neovim plugin.

## Structure

- `lua/nvim_plugin_boilerplate/init.lua`: main plugin module
- `plugin/nvim-plugin-boilerplate.lua`: Neovim runtime entrypoint

## Features

- `setup()` function for user configuration
- Example user command: `:NvimPluginBoilerplateHello`
- Example feature command: `:NvimPluginBoilerplateToggleRelativeNumber`
- Example Lua API: `require("nvim_plugin_boilerplate").hello()`

## Installation

### lazy.nvim

```lua
{
  "caiobianchi/nvim-plugin-boilerplate",
  config = function()
    require("nvim_plugin_boilerplate").setup({
      message = "Hello from my plugin",
    })
  end,
}
```

## Development

The plugin command is defined in `plugin/`, and the implementation lives in `lua/`.

The sample feature toggles `relativenumber` in the current window so the template includes one command that changes editor state in a visible way.

Rename the project directory, Lua module, and command names to match your plugin before publishing.

Common development tasks are available through `make`:

```sh
make test
make lint
make format
```

## Testing

This boilerplate includes a minimal `plenary.nvim` test setup.

Fetch the local test dependency with:

```sh
./scripts/setup-tests.sh
```

Run the test suite from Neovim with:

```sh
nvim --headless -u NONE -c "luafile tests/minimal_init.lua" -c "PlenaryBustedDirectory tests/spec { minimal_init = 'tests/minimal_init.lua' }" -c qa
```

The command above assumes `plenary.nvim` is available at `.tests/plenary.nvim`.

## CI

The included GitHub Actions workflow runs `stylua --check` and the headless Plenary test suite on pushes and pull requests.

## Releases

Pushing a tag that matches `v*` triggers the release workflow and creates a GitHub release.
