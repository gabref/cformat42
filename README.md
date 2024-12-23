# CFormat42.nvim

CFormat42.nvim is a lightweight Neovim plugin that formats C, C++, and header files using the `c_formatter_42` Python tool. It simplifies code formatting following 42 School Norm by providing seamless integration with Neovim.

![cformat42 Preview](https://github.com/user-attachments/assets/2c42a34c-9adc-46bf-a286-a189ec4b6ebb)


## Features

- Automatically installs `c_formatter_42` if not present.
- Supports customization of file types and formatter binary.
- Easy-to-use commands and keybindings for efficient formatting.
- Highly configurable for different user preferences.

## Installation

Install CFormat42.nvim using your favorite plugin manager. Below is an example using lazy.nvim:

```lua
{
    "yourname/cformat42.nvim",
    config = function()
        require("cformat42").setup()
    end
}
```

## Usage

After installation, the plugin is ready to use with default settings.

### Formatting the Current Buffer

Use the `:CFormat42` command to format the current buffer.

Alternatively, you can bind a key for convenience:

```lua
vim.api.nvim_set_keymap("n", "<leader>4", ":CFormat42<CR>", { noremap = true, silent = true })
```

### Custom Configuration

Customize the plugin by calling the `setup` function in your Neovim configuration file:

```lua
require("cformat42").setup({
    formatter = "c_formatter_42",  -- Path or name of the formatter binary
    filetypes = { c = true, h = true, cpp = true, hpp = true },
})
```

#### Default Configuration

- `formatter`: (string) Path or name of the formatter binary. Default: `"c_formatter_42"`.
- `filetypes`: (table) Supported file types. Default:
  ```lua
  { c = true, h = true, cpp = true, hpp = true }
  ```

## FAQ

**Q: What happens if `c_formatter_42` is not installed?**
A: The plugin will automatically install it using `pip3 install c-formatter-42`.

**Q: Can I use a custom formatter?**
A: Yes! Update the `formatter` option in the `setup()` function to your preferred binary or script.

**Q: How do I add support for more file types?**
A: Extend the `filetypes` table in the `setup()` configuration.

## Acknowledgments

Special thanks to the contributors of (c_formatter_42)[https://github.com/dawnbeen/c_formatter_42], whose tool makes this plugin possible.

## Contributing

Contributions are welcome! If you encounter issues or have feature requests, please open an issue or a pull request in the GitHub repository.

## License

CFormat42.nvim is open-source software licensed under the MIT License.
