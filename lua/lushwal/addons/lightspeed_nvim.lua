-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	local foreground = hsl("#FFFFFF")
	local warmer = colors.color1.darken(25)
	local cooler = colors.color14
	local mask = colors.color5.darken(15)
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
end)
