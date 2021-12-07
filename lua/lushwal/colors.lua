-- luacheck: globals vim
local hsl = require("lush").hsl
local xdg = require("lushwal.utils.xdg")

-- Decode some JSON:
local json_decode = function(data)
	return pcall(vim.fn.json_decode, data)
end

-- Locate pywal cache:
local wal_path = xdg("XDG_CACHE_HOME") .. "/wal/colors.json"
local ok, colors = json_decode(vim.fn.readfile(wal_path))

-- Generate Color Variables:
if ok then
	local foreground = hsl(colors.special.foreground)
	local background = hsl(colors.special.background)
	local cursor = hsl(colors.special.cursor)
	local color0 = hsl(colors.colors.color1)
	local color1 = hsl(colors.colors.color1)
	local color2 = hsl(colors.colors.color2)
	local color3 = hsl(colors.colors.color3)
	local color4 = hsl(colors.colors.color4)
	local color5 = hsl(colors.colors.color5)
	local color6 = hsl(colors.colors.color6)
	local color7 = hsl(colors.colors.color7)
	local color8 = hsl(colors.colors.color8)
	local color9 = hsl(colors.colors.color9)
	local color10 = hsl(colors.colors.color10)
	local color11 = hsl(colors.colors.color11)
	local color12 = hsl(colors.colors.color12)
	local color13 = hsl(colors.colors.color13)
	local color14 = hsl(colors.colors.color14)
	local color15 = hsl(colors.colors.color15)
	local grey = color8.mix(color7, 30) -- Darker mid-grey
	local br_grey = color8.mix(color7, 65) -- Mid-grey
	local purple = color4.rotate(65).li(45) -- Purple
	local brown = color1.mix(color5, 15) -- Brown

	return {
		foreground = foreground,
		background = background,
		cursor = cursor,
		color0 = color0,
		color1 = color1,
		color2 = color2,
		color3 = color3,
		color4 = color4,
		color5 = color5,
		color6 = color6,
		color7 = color7,
		color8 = color8,
		color9 = color9,
		color10 = color10,
		color11 = color11,
		color12 = color12,
		color13 = color13,
		color14 = color14,
		color15 = color15,
		grey = grey,
		br_grey = br_grey,
		purple = purple,
		brown = brown,
	}
else
	return nil
end
