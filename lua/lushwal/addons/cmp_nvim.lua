-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		CmpItemAbbr({ fg = colors.br_grey }),
		CmpItemAbbrDeprecated({ fg = colors.br_grey, gui = "strikethrough" }),
		CmpItemAbbrMatch({ fg = colors.color7, gui = "bold" }),
		CmpItemAbbrMatchFuzzy({ fg = colors.color7, gui = "bold" }),
		CmpItemKind({ fg = colors.color6 }),
		CmpItemMenu({ fg = colors.color7 }),
	}
end)
