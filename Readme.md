# Lushwal.nvim

This plugin uses [lush.nvim](https://github.com/rktjmp/lush.nvim) to generate a Neovim colorscheme based on your current [pywal](https://github.com/dylanaraps/pywal) colors. Given that it reads a JSON file each time you start, the plugin can also use [shipwright.nvim](https://github.com/rktjmp/shipwright.nvim) to compile a Vimscript version of your colorscheme for faster startup.


## Installation

### `packer.nvim`

```lua
use({
	"oncomouse/lushwal",
	requires = { { "rktjmp/lush.nvim", opt = true }, { "rktjmp/shipwright.nvim", opt = true } },
})
```

You can use `opt=true` because this plugin calls `packadd` when it needs lush and/or shipwright.

## Usage

Set `colorscheme lushwal` somewhere in your `init.lua` or `init.vim`.

If you are using the caching feature (on by default), [shipwright.nvim](https://github.com/rktjmp/shipwright.nvim) will take care of everything else.

### With pywal

You can run `:LushwalCompile` whenever you update your pywal colors.

If you want, you can run `nvim --headless +LushwalCompile +qall` after you run pywal to regenerate your cached colorscheme.

## Configuration

Set `vim.g.lushwal_configuration` (in Lua) or `g:lushwal_configuration` (in Vimscript) to override any of the following default values:

~~~lua
{
	compile_to_vimscript = true,
}
~~~
