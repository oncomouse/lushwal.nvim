local colors = require("lushwal.colors")
local red = colors.color1.hex
local green = colors.color2.hex
local blue = colors.color4.hex
-- local purple = colors.purple.hex
local orange = colors.color3.hex
local aqua = colors.color6.hex

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
local statusline_active_fg = colors.color7.hex
local statusline_active_bg = colors.background.hex
local statusline_inactive_fg = colors.color7.hex
local statusline_inactive_bg = colors.color8.hex

return {
	visual = {
		a = { fg = visual_fg, bg = visual_bg, gui = "bold" },
		b = { fg = visual_bg, bg = colors.color8.hex },
	},
	replace = {
		a = { fg = replace_fg, bg = replace_bg, gui = "bold" },
		b = { fg = replace_bg, bg = colors.color8.hex },
	},
	command = {
		a = { fg = command_fg, bg = command_bg, gui = "bold" },
		b = { fg = command_bg, bg = colors.color8.hex },
	},
	inactive = {
		a = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
		b = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
		c = { fg = statusline_inactive_fg, bg = statusline_inactive_bg },
	},
	normal = {
		a = { fg = normal_fg, bg = normal_bg, gui = "bold" },
		b = { fg = normal_bg, bg = colors.color8.hex },
		c = { fg = statusline_active_fg, bg = statusline_active_bg },
	},
	insert = {
		a = { fg = insert_fg, bg = insert_bg, gui = "bold" },
		b = { fg = insert_bg, bg = colors.color8.hex },
	},
}
