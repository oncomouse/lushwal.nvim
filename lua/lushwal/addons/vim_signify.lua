-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		SignifySignAdd({ fg = colors.green, bg = colors.background, gui = "bold" }),
		SignifySignChange({ fg = colors.blue, bg = colors.background, gui = "bold" }),
		SignifySignDelete({ fg = colors.orange, bg = colors.background, gui = "bold" }),
		SignifySignChangeDelete({ fg = colors.purple, bg = colors.background, gui = "bold" }),
		SignifySignDeleteFirstLine({ fg = colors.orange, bg = colors.background, gui = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
