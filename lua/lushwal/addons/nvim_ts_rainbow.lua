-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		rainbowcol1({ bg = colors.black, fg = colors.orange }),
		rainbowcol2({ bg = colors.black, fg = colors.br_green }),
		rainbowcol3({ bg = colors.black, fg = colors.yellow }),
		rainbowcol4({ bg = colors.black, fg = colors.cyan }),
		rainbowcol5({ bg = colors.black, fg = colors.red }),
		rainbowcol6({ bg = colors.black, fg = colors.green.li(40) }),
		rainbowcol7({ bg = colors.black, fg = colors.purple }),
	}
	-- selene: deny(undefined_variable)
end)
