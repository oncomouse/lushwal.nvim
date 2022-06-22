-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NeomakeErrorSign({ fg = colors.orange, bg = colors.background }),
		NeomakeWarningSign({ fg = colors.yellow, bg = colors.background }),
		NeomakeInfoSign({ fg = colors.br_black, bg = colors.background }),
		NeomakeError({ fg = colors.orange, gui = "underline", sp = colors.orange }),
		NeomakeWarning({ fg = colors.orange, gui = "underline", sp = colors.orange }),
	}
	-- selene: deny(undefined_variable)
end)
