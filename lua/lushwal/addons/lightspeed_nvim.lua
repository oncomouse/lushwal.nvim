-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	local foreground = lush.hsl("#FFFFFF")
	local warmer = colors.red.darken(25)
	local cooler = colors.br_cyan
	local mask = colors.orange.darken(15)
	-- selene: allow(undefined_variable)
	return {
		LightspeedLabel({ fg = warmer, gui = "bold,underline" }),
		LightspeedOverlapped({ fg = warmer.darken(15), gui = "underline" }),
		LightspeedLabelDistant({ fg = cooler, gui = "bold,underline" }),
		LightspeedLabelDistantOverlapped({ fg = cooler.darken(15), gui = "underline" }),
		LightspeedShortcut({ bg = warmer, fg = foreground, gui = "bold,underline" }),
		LightspeedShortcutOverlapped({ LightspeedShortcut, gui = "underline" }),
		LightspeedMaskedChar({ fg = mask, gui = "none" }),
		LightspeedGreyWash({ fg = colors.br_grey }),
		LightspeedUnlabeledMatch({ fg = foreground, gui = "bold" }),
		LightspeedOneCharMatch({ LightspeedShortcut, gui = "none" }),
		LightspeedUniqueChar({ LightspeedUnlabeledMatch }),
		LightspeedPendingOpArea({ LightspeedShortcut, gui = "underline" }),
	}
	-- selene: deny(undefined_variable)
end)
