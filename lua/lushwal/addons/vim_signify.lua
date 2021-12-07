-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		SignifySignAdd({ fg = colors.color2, bg = colors.background, gui = "bold" }),
		SignifySignChange({ fg = colors.color4, bg = colors.background, gui = "bold" }),
		SignifySignDelete({ fg = colors.color5, bg = colors.background, gui = "bold" }),
		SignifySignChangeDelete({ fg = colors.purple, bg = colors.background, gui = "bold" }),
		SignifySignDeleteFirstLine({ fg = colors.color5, bg = colors.background, gui = "bold" }),
	}
end)
