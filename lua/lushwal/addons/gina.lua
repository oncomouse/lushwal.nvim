-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		AnsiColor0({ fg = colors.color, ctermfg = 0 }),
		AnsiColor1({ fg = colors.color, ctermfg = 1 }),
		AnsiColor2({ fg = colors.color, ctermfg = 2 }),
		AnsiColor3({ fg = colors.color, ctermfg = 3 }),
		AnsiColor4({ fg = colors.color, ctermfg = 4 }),
		AnsiColor5({ fg = colors.color, ctermfg = 5 }),
		AnsiColor6({ fg = colors.color, ctermfg = 6 }),
		AnsiColor7({ fg = colors.color, ctermfg = 7 }),
		AnsiColor8({ fg = colors.color, ctermfg = 8 }),
		AnsiColor9({ fg = colors.color, ctermfg = 9 }),
		AnsiColor10({ fg = colors.color, ctermfg = 10 }),
		AnsiColor11({ fg = colors.color, ctermfg = 11 }),
		AnsiColor12({ fg = colors.color, ctermfg = 12 }),
		AnsiColor13({ fg = colors.color, ctermfg = 13 }),
		AnsiColor14({ fg = colors.color, ctermfg = 14 }),
		AnsiColor15({ fg = colors.color, ctermfg = 15 }),
	}
	-- selene: deny(undefined_variable)
end)
