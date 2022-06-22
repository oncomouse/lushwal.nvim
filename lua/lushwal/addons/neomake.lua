-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NeomakeErrorSign({ fg = colors.red, bg = colors.background }),
		NeomakeWarningSign({ fg = colors.yellow, bg = colors.background }),
		NeomakeInfoSign({ fg = colors.br_black, bg = colors.background }),
		NeomakeError({ fg = colors.red, gui = "underline", sp = colors.red }),
		NeomakeWarning({ fg = colors.red, gui = "underline", sp = colors.red }),
	}
	-- selene: deny(undefined_variable)
end)
