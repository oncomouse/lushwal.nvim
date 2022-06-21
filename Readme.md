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
	addons = {
		ale = false,
		barbar = false,
		bufferline_nvim = false,
		coc_nvim = false,
		dashboard_nvim = false,
		fern_vim = false,
		gina = false,
		gitsigns_nvim = false,
		hop_nvim = false,
		hydra_nvim = false,
		indent_blankline_nvim = false,
		lightspeed_nvim = false,
		lspsaga_nvim = false,
		lsp_trouble_nvim = false,
		lualine = false,
		markdown = false,
		native_lsp = true,
		neogit = false,
		neomake = false,
		nerdtree = false,
		nvim_cmp = false,
		nvim_tree_lua = false,
		nvim_ts_rainbow = false,
		semshi = false,
		telescope_nvim = false,
		treesitter = true,
		vim_dirvish = false,
		vim_gitgutter = false,
		vim_signify = false,
		vim_sneak = false,
		which_key_nvim = false,
	}
}
~~~

### Addons

lushwal supports a variety of popular plugins but most are disabled by default. The addons section contains a list of plugins that can be enabled. If you change your lushwal configuration, you will need to re-run `:LushwalCompile`.

By default, treesitter and native_lsp support are enabled.

## Source Material

Plugins I don't use (which are most of the supported plugins) are adapted from [catppuccin](https://github.com/catppuccin/nvim), which has great plugin support and uses a configuration system similar to the one used by pywal.

If you use lushwal and use one of the plugins I've sourced from catppuccin and the colors look weird, please submit a PR.
