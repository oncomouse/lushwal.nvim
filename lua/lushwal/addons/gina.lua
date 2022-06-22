-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		AnsiColor0({ fg = colors.color0 }),
		AnsiColor1({ fg = colors.color1 }),
		AnsiColor2({ fg = colors.color2 }),
		AnsiColor3({ fg = colors.color3 }),
		AnsiColor4({ fg = colors.color4 }),
		AnsiColor5({ fg = colors.color5 }),
		AnsiColor6({ fg = colors.color6 }),
		AnsiColor7({ fg = colors.color7 }),
		AnsiColor8({ fg = colors.color8 }),
		AnsiColor9({ fg = colors.color9 }),
		AnsiColor10({ fg = colors.color10 }),
		AnsiColor11({ fg = colors.color11 }),
		AnsiColor12({ fg = colors.color12 }),
		AnsiColor13({ fg = colors.color13 }),
		AnsiColor14({ fg = colors.color14 }),
		AnsiColor15({ fg = colors.color15 }),
	}
	-- selene: deny(undefined_variable)
end)
