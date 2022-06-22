-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		HopNextKey({ bg = colors.black, fg = colors.br_red, gui = "bold" }),
		HopNextKey1({ bg = colors.black, fg = colors.purple, gui = "bold" }),
		HopNextKey2({ bg = colors.black, fg = colors.purple.darken(10) }),
		HopUnmatched({ bg = colors.black, fg = colors.br_grey }),
	}
	-- selene: deny(undefined_variable)
end)
