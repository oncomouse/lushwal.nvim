-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NeomakeErrorSign({ fg = colors.color5, bg = colors.background }),
		NeomakeWarningSign({ fg = colors.color3, bg = colors.background }),
		NeomakeInfoSign({ fg = colors.color8, bg = colors.background }),
		NeomakeError({ fg = colors.color5, gui = "underline", sp = colors.color5 }),
		NeomakeWarning({ fg = colors.color5, gui = "underline", sp = colors.color5 }),
	}
	-- selene: deny(undefined_variable)
end)
