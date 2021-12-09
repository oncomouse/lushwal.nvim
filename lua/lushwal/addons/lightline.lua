-- luacheck: globals vim
local colors = require("lushwal.colors")
local red = colors.color1.hex
local green = colors.color2.hex
local blue = colors.color4.hex

-- local pink = colors.color5.hex
-- local olive = colors.color2.hex
-- local navy = colors.color4.darken(15).hex

-- local orange = colors.color3.hex
local purple = colors.purple.hex
local aqua = colors.color6.hex

-- Basics:
local foreground = colors.foreground.hex
local background = colors.background.hex
local window = colors.color7.hex
local status = colors.color8.hex
local error = "#5f0000"

-- Tabline:
local tabline_bg = window
local tabline_active_fg = foreground
local tabline_active_bg = aqua
local tabline_inactive_fg = window
local tabline_inactive_bg = status

-- Statusline:
local statusline_active_fg = foreground
local statusline_active_bg = background
local statusline_inactive_fg = window
local statusline_inactive_bg = status

local lightline_theme = {
	normal = {
		left = {
			{ background, green, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
		middle = { { statusline_active_fg, statusline_active_bg } },
		right = {
			{ foreground, background },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},

	inactive = {
		left = {
			{ statusline_inactive_fg, statusline_inactive_bg },
			{ statusline_inactive_fg, statusline_inactive_bg },
		},
		middle = { { statusline_inactive_fg, statusline_inactive_bg } },
		right = {
			{ statusline_inactive_fg, statusline_inactive_bg },
			{ statusline_inactive_fg, statusline_inactive_bg },
		},
	},

	insert = {
		left = {
			{ background, blue, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},

	replace = {
		left = {
			{ background, red, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},

	visual = {
		left = {
			{ background, purple, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},
	tabline = {
		left = { { tabline_inactive_fg, tabline_inactive_bg } },
		tabsel = { { tabline_active_fg, tabline_active_bg } },
		middle = { { tabline_bg, tabline_bg } },
		right = {
			{ foreground, background },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
		error = { { background, error } },
	},
}
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
