-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		ALEVirtualTextError({ fg = colors.red, bg = colors.background }),
		ALEVirtualTextWarning({ fg = colors.yellow, bg = colors.background }),
		ALEVirtualTextInfo({ fg = colors.blue, bg = colors.background }),
		ALEError({ ALEVirtualTextError, sp=ALEVirtualTextError.fg, gui = "underline" }),
		ALEWarning({ ALEVirtualTextWarning, sp=ALEVirtualTextWarning.fg, gui = "underline" }),
		ALEInfo({ ALEVirtualTextInfo, sp=ALEVirtualTextInfo.fg, gui = "underline" }),
		ALEErrorSign({ ALEVirtualTextError, gui = "bold" }),
		ALEWarningSign({ ALEVirtualTextWarning, gui = "bold" }),
		ALEInfoSign({ ALEVirtualTextInfo, gui = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
