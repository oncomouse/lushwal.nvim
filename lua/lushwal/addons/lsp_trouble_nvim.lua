-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		LspTroubleText({ fg = colors.color15 }),
		LspTroubleCount({ fg = colors.color1, bg = colors.color8 }),
		LspTroubleNormal({ fg = colors.color7, bg = colors.color0 }),
	}
	-- selene: deny(undefined_variable)
end)
