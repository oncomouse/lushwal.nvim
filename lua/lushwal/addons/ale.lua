-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		ALEVirtualTextError({ fg = colors.color5, bg = colors.background }),
		ALEVirtualTextWarning({ fg = colors.color3, bg = colors.background }),
		ALEVirtualTextInfo({ fg = colors.color8, bg = colors.background }),
		ALEError({ ALEVirtualTextError, gui = "underline" }),
		ALEWarning({ ALEVirtualTextWarning, gui = "underline" }),
		ALEInfo({ ALEVirtualTextInfo, gui = "underline" }),
		ALEErrorSign({ ALEVirtualTextError, gui = "bold" }),
		ALEWarningSign({ ALEVirtualTextWarning, gui = "bold" }),
		ALEInfoSign({ ALEVirtualTextInfo, gui = "bold" }),
	}
end)
