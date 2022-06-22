-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		GitGutterAdd({ fg = colors.color2, bg = colors.background, gui = "bold" }),
		GitGutterChange({ fg = colors.color4, bg = colors.background, gui = "bold" }),
		GitGutterDelete({ fg = colors.color5, bg = colors.background, gui = "bold" }),
		GitGutterChangeDelete({ fg = colors.purple, bg = colors.background, gui = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
