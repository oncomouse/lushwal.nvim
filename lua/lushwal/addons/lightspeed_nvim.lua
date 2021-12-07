-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		LightspeedLabel({ bg = colors.color8, fg = colors.color7 }),
		LightspeedOverlapped({ bg = colors.color8, fg = colors.color7 }),
		LightspeedLabelDistant({ bg = colors.purple, fg = colors.color7 }),
		LightspeedLabelDistantOverlapped({ bg = colors.purple, fg = colors.color7 }),
		LightspeedShortcut({ bg = colors.color0, fg = colors.brown, gui = "italic" }),
		LightspeedShortcutOverlapped({ bg = colors.color0, fg = colors.brown, gui = "bold" }),
		LightspeedMaskedChar({ bg = colors.color0, fg = colors.color1, gui = "undercurl" }),
		LightspeedGreyWash({ bg = colors.color0, fg = colors.color01 }),
		LightspeedUnlabeledMatch({ bg = colors.color0, fg = colors.color1, gui = "underline" }),
		LightspeedOneCharMatch({ bg = colors.color0, fg = colors.color1, gui = "underline" }),
		LightspeedUniqueChar({ bg = colors.color0, fg = colors.color15, gui = "strikethrough" }),
		LightspeedPendingOpArea({ bg = colors.color0, fg = colors.color15, gui = "strikethrough" }),
		LightspeedPendingChangeOpArea({ bg = colors.color0, fg = colors.color15, gui = "strikethrough" }),
		LightspeedCursor({ fg = colors.color0, bg = colors.color7 }),
	}
end)
