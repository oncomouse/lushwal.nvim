-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		TelescopeBorder({ fg = colors.br_grey }),
		TelescopePromptBorder({ fg = colors.br_grey }),
		TelescopeSelectionCaret({ fg = colors.br_cyan }),
		TelescopeSelection({ fg = colors.br_cyan, bg = colors.br_black }),
		TelescopeMatching({ fg = colors.br_yellow }),
		TelescopePromptCounter({ fg = colors.blue }),
		TelescopeMultiSelection({ fg = colors.yellow, gui = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
