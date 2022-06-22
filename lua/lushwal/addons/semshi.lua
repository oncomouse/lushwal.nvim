-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		semshiLocal({ fg = colors.brown }),
		semshiGlobal({ fg = colors.red }),
		semshiImported({ fg = colors.brown, gui = "bold" }),
		semshiParameter({ fg = colors.blue }),
		semshiParameterUnused({ fg = colors.br_blue, gui = "underline" }),
		semshiFree({ fg = colors.orange }),
		semshiBuiltin({ fg = colors.br_magenta }),
		semshiAttribute({ fg = colors.cyan }),
		semshiSelf({ fg = colors.white }),
		semshiUnresolved({ fg = colors.yellow, gui = "underline" }),
		semshiSelected({ fg = colors.background, bg = colors.br_red.li(35) }),
		semshiErrorSign({ fg = colors.foreground, bg = colors.red.li(5) }),
		semshiErrorChar({ fg = colors.foreground, bg = colors.red.li(5) }),
	}
	-- selene: deny(undefined_variable)
end)
