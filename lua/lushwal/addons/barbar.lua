-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		BufferCurrent({ bg = colors.color8, fg = colors.color7 }),
		BufferCurrentIndex({ bg = colors.color8, fg = colors.color6 }),
		BufferCurrentMod({ bg = colors.color8, fg = colors.color5 }),
		BufferCurrentSign({ bg = colors.color8, fg = colors.color6 }),
		BufferCurrentTarget({ bg = colors.color8, fg = colors.color3 }),
		BufferVisible({ bg = colors.color0, fg = colors.color7 }),
		BufferVisibleIndex({ bg = colors.color0, fg = colors.color6 }),
		BufferVisibleMod({ bg = colors.color0, fg = colors.color3 }),
		BufferVisibleSign({ bg = colors.color0, fg = colors.color6 }),
		BufferVisibleTarget({ bg = colors.color0, fg = colors.color5 }),
		BufferInactive({ bg = colors.color0, fg = colors.br_grey }),
		BufferInactiveIndex({ bg = colors.color0, fg = colors.br_grey }),
		BufferInactiveMod({ bg = colors.color0, fg = colors.color3 }),
		BufferInactiveSign({ bg = colors.color0, fg = colors.color6 }),
		BufferInactiveTarget({ bg = colors.color0, fg = colors.color5 }),
		BufferTabpages({ bg = colors.color0 }),
		BufferTabpage({ bg = colors.color0, fg = colors.color6 }),
		BufferTabpageFill({ bg = colors.color0, fg = colors.br_grey })
	}
	-- selene: deny(undefined_variable)
end)
