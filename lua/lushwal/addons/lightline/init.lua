-- luacheck: globals vim
local lightline_theme = require("lushwal.addons.lightline.scheme")
-- Use lightlines helper functions to correct cterm holes in our theme.
local ok, lightline_theme_filled = pcall(vim.fn["lightline#colorscheme#fill"], lightline_theme)

-- define our theme for lightline to find
if ok then
	vim.g["lightline#colorscheme#lushwal#palette"] = lightline_theme_filled
	vim.schedule(function()
		-- lightline#colorscheme() has a side effect of not always
		-- applying updates until after leaving insert mode.
		-- vim.fn["lightline#colorscheme"]()

		-- this will apply more uniforming across all modes, but may have
		-- unacceptable performance impacts.
		vim.fn['lightline#disable']()
		vim.fn['lightline#enable']()
	end)
	return lightline_theme_filled
end
