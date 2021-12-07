-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		HopNextKey({ bg = colors.color0, fg = colors.brown, gui = "bold,underline" }),
		HopNextKey1({ bg = colors.color0, fg = colors.color6, gui = "bold" }),
		HopNextKey2({ bg = colors.color0, fg = colors.color10, gui = "bold,italic" }),
		HopUnmatched({ bg = colors.color0, fg = colors.br_grey }),
	}
end)
