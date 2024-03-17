# toggle_go_test_file.nvim
toggle go test file(e.g.: main.go -> main_test.go)

## Features

- Toggle between Go source file and test file with a simple command.

## Usage

- `:ToggleGoTestFile` : Toggle go test file

## Installation

This plugin can be installed with Lazy. Add the following line to your config file:

```lua
{
  'mitubaEX/toggle_go_test_file.nvim',
  ft = 'go',
  config = function()
    vim.keymap.set('n', '<Leader>xg', ':ToggleGoTestFile<CR>', { noremap = true, silent = true })
  end
}
```


## License

This project is licensed under the MIT License.
