-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		semshiLocal({ fg = colors.brown }),
		semshiGlobal({ fg = colors.color1 }),
		semshiImported({ fg = colors.brown, gui = "bold" }),
		semshiParameter({ fg = colors.color4 }),
		semshiParameterUnused({ fg = colors.color12, gui = "underline" }),
		semshiFree({ fg = colors.color5 }),
		semshiBuiltin({ fg = colors.color13 }),
		semshiAttribute({ fg = colors.color6 }),
		semshiSelf({ fg = colors.color7 }),
		semshiUnresolved({ fg = colors.color3, gui = "underline" }),
		semshiSelected({ fg = colors.background, bg = colors.color9.li(35) }),
		semshiErrorSign({ fg = colors.foreground, bg = colors.color1.li(5) }),
		semshiErrorChar({ fg = colors.foreground, bg = colors.color1.li(5) }),
	}
	-- selene: deny(undefined_variable)
end)
