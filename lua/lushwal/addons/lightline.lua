-- luacheck: globals vim
local colors = require("lushwal").colors
local red = colors.red.hex
local green = colors.green.hex
local blue = colors.blue.hex
local purple = colors.purple.hex
local aqua = colors.cyan.hex

-- Basics:
local foreground = colors.foreground.hex
local background = colors.background.hex
local window = colors.white.hex
local status = colors.br_black.hex
local error = "#5f0000"

-- Normal Mode:
local normal_bg = green
local normal_fg = background

-- Insert Mode:
local insert_bg = blue
local insert_fg = background

-- Visual Mode:
local visual_bg = purple
local visual_fg = background

-- Replace Mode:
local replace_bg = red
local replace_fg = background

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
			{ normal_fg, normal_bg, "bold" },
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
			{ insert_fg, insert_bg, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},

	replace = {
		left = {
			{ replace_fg, replace_bg, "bold" },
			{ statusline_active_fg, status },
			{ statusline_active_fg, statusline_active_bg },
		},
	},

	visual = {
		left = {
			{ visual_fg, visual_bg, "bold" },
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
