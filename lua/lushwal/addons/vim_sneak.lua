-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		Sneak({ fg = colors.black, bg = colors.red }),
		SneakScope({ bg = colors.white }),
	}
	-- selene: deny(undefined_variable)
end)
