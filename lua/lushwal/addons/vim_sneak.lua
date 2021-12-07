-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		Sneak({ fg = colors.color0, bg = colors.color1 }),
		SneakScope({ bg = colors.color7 }),
	}
end)
