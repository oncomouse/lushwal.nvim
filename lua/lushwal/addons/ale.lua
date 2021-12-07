-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		ALEErrorSign({ fg = colors.color5, bg = colors.background, gui = "bold" }),
		ALEWarningSign({ fg = colors.color3, bg = colors.background, gui = "bold" }),
		ALEInfoSign({ fg = colors.color8, bg = colors.background, gui = "bold" }),
	}
end)
