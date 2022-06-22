local colors = require("lushwal").colors
local red = colors.red.hex
local green = colors.green.hex
local blue = colors.blue.hex
-- local purple = colors.purple.hex
local orange = colors.yellow.hex
local aqua = colors.cyan.hex

-- Normal Mode:
local normal_bg = green
local normal_fg = colors.background.hex

-- Insert Mode:
local insert_bg = blue
local insert_fg = colors.background.hex

-- Visual Mode:
local visual_bg = orange
local visual_fg = colors.background.hex

-- Replace Mode:
local replace_bg = red
local replace_fg = colors.background.hex

-- Command Mode:
local command_bg = aqua
local command_fg = colors.background.hex

-- Statusline:
local statusline_active_fg = colors.white.hex
local statusline_active_bg = colors.background.hex
local statusline_inactive_fg = colors.white.hex
local statusline_inactive_bg = colors.br_black.hex

return {
	visual = {
		a = { fg = visual_fg, bg = visual_bg, gui = "bold" },
		b = { fg = visual_bg, bg = colors.br_black.hex },
	},
	replace = {
		a = { fg = replace_fg, bg = replace_bg, gui = "bold" },
		b = { fg = replace_bg, bg = colors.br_black.hex },
	},
	command = {
		a = { fg = command_fg, bg = command_bg, gui = "bold" },
		b = { fg = command_bg, bg = colors.br_black.hex },
	},
	inactive = {
		a = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
		b = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
		c = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
	},
	normal = {
		a = { fg = normal_fg, bg = normal_bg, gui = "bold" },
		b = { fg = normal_bg, bg = colors.br_black.hex },
		c = { fg = statusline_active_fg, bg = statusline_active_bg },
	},
	insert = {
		a = { fg = insert_fg, bg = insert_bg, gui = "bold" },
		b = { fg = insert_bg, bg = colors.br_black.hex },
	},
}
