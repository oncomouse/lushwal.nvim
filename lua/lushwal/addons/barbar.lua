-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		BufferCurrent({ bg = colors.br_black, fg = colors.white }),
		BufferCurrentIndex({ bg = colors.br_black, fg = colors.cyan }),
		BufferCurrentMod({ bg = colors.br_black, fg = colors.red }),
		BufferCurrentSign({ bg = colors.br_black, fg = colors.cyan }),
		BufferCurrentTarget({ bg = colors.br_black, fg = colors.yellow }),
		BufferVisible({ bg = colors.black, fg = colors.white }),
		BufferVisibleIndex({ bg = colors.black, fg = colors.cyan }),
		BufferVisibleMod({ bg = colors.black, fg = colors.yellow }),
		BufferVisibleSign({ bg = colors.black, fg = colors.cyan }),
		BufferVisibleTarget({ bg = colors.black, fg = colors.red }),
		BufferInactive({ bg = colors.black, fg = colors.br_grey }),
		BufferInactiveIndex({ bg = colors.black, fg = colors.br_grey }),
		BufferInactiveMod({ bg = colors.black, fg = colors.yellow }),
		BufferInactiveSign({ bg = colors.black, fg = colors.cyan }),
		BufferInactiveTarget({ bg = colors.black, fg = colors.red }),
		BufferTabpages({ bg = colors.black }),
		BufferTabpage({ bg = colors.black, fg = colors.cyan }),
		BufferTabpageFill({ bg = colors.black, fg = colors.br_grey })
	}
	-- selene: deny(undefined_variable)
end)
