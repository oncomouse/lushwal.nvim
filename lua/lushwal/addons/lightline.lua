-- luacheck: globals vim
local colors = require("lushwal.colors")
local red = colors.color1
local green = colors.color2
local blue = colors.color4

local pink = colors.color5
local olive = colors.color2
local navy = blue.darken(15)

local orange = colors.color3
local purple = colors.purple
local aqua = colors.color6

-- Basics:
local foreground = colors.foreground
local background = colors.background
local window = colors.color7
local status = colors.color8
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

-- Visual:
local visual_fg = background
local visual_bg = purple
local lightline_theme = { normal = {}, inactive = {}, insert = {}, replace = {}, visual = {}, tabline = {} }
lightline_theme.normal.left = {
	{ foreground, background },
	{ statusline_active_fg, status },
	{ statusline_active_fg, statusline_active_bg },
}
lightline_theme.normal.right = {
	{ foreground, background },
	{ statusline_active_fg, status },
	{ statusline_active_fg, statusline_active_bg },
}
lightline_theme.normal.middle = { { statusline_active_fg, statusline_active_bg } }
lightline_theme.inactive.right = { { foreground, background }, { foreground, background } }
lightline_theme.inactive.left = { { foreground, background }, { foreground, background } }
lightline_theme.inactive.middle = { { foreground, background } }
lightline_theme.insert.left = {
	{ background, blue },
	{ statusline_active_fg, status },
	{ statusline_active_fg, statusline_active_bg },
}
lightline_theme.replace.left = {
	{ background, red },
	{ statusline_active_fg, status },
	{ statusline_active_fg, statusline_active_bg },
}
lightline_theme.visual.left = {
	{ visual_fg, visual_bg },
	{ statusline_active_fg, status },
	{ statusline_active_fg, statusline_active_bg },
}
lightline_theme.tabline.left = { { tabline_inactive_fg, tabline_inactive_bg } }
lightline_theme.tabline.tabsel = { { tabline_active_fg, tabline_active_bg } }
lightline_theme.tabline.middle = { { tabline_bg, tabline_bg } }
lightline_theme.tabline.right = vim.fn.copy(lightline_theme.normal.right)
lightline_theme.normal.error = { { background, error } }

-- Use lightlines helper functions to correct cterm holes in our theme.
local ok, lightline_theme_filled = pcall(vim.fn["lightline#colorscheme#fill"], lightline_theme)

-- define our theme for lightline to find
if ok then
	vim.g["lightline#colorscheme#lightline_two_files#palette"] = lightline_theme_filled
end

return lightline_theme_filled
