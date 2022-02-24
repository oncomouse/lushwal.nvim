-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		TelescopeBorder({ fg = colors.br_grey }),
		TelescopePromptBorder({ fg = colors.br_grey }),
		TelescopeSelectionCaret({ fg = colors.color14 }),
		TelescopeSelection({ fg = colors.color14, bg = colors.color8 }),
		TelescopeMatching({ fg = colors.color11 }),
		TelescopePromptCounter({ fg = colors.color4 }),
		TelescopeMultiSelection({ fg = colors.color3, gui = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
