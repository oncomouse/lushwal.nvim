-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		GitSignsAdd({ fg = colors.cyan }),
		GitSignsChange({ fg = colors.yellow }),
		GitSignsDelete({ fg = colors.red }),
	}
	-- selene: deny(undefined_variable)
end)
