-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		LspTroubleText({ fg = colors.br_white }),
		LspTroubleCount({ fg = colors.red, bg = colors.br_black }),
		LspTroubleNormal({ fg = colors.white, bg = colors.black }),
	}
	-- selene: deny(undefined_variable)
end)
