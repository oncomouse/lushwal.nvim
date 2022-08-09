-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		CmpItemAbbr({ fg = colors.br_grey }),
		CmpItemAbbrDeprecated({ fg = colors.br_grey, gui = "strikethrough" }),
		CmpItemAbbrMatch({ fg = colors.br_white, gui = "bold" }),
		CmpItemAbbrMatchFuzzy({ fg = colors.br_white, gui = "bold" }),
		CmpItemKind({ fg = colors.cyan }),
		CmpItemMenu({ fg = colors.white }),
	}
	-- selene: deny(undefined_variable)
end)
