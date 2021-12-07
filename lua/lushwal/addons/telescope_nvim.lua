-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		TelescopeBorder({ fg = colors.color4 }),
		TelescopePromptBorder({ fg = colors.color6 }),
		TelescopeSelectionCaret({ fg = colors.purple }),
		TelescopeSelection({ fg = colors.purple, bg = colors.grey }),
		TelescopeMatching({ fg = colors.color14 }),
	}
end)
