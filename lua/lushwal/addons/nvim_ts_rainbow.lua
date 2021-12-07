-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		rainbowcol1({ bg = colors.color0, fg = colors.color5 }),
		rainbowcol2({ bg = colors.color0, fg = colors.color10 }),
		rainbowcol3({ bg = colors.color0, fg = colors.color3 }),
		rainbowcol4({ bg = colors.color0, fg = colors.color6 }),
		rainbowcol5({ bg = colors.color0, fg = colors.color1 }),
		rainbowcol6({ bg = colors.color0, fg = colors.color2.li(40) }),
		rainbowcol7({ bg = colors.color0, fg = colors.color15 }),
	}
end)
