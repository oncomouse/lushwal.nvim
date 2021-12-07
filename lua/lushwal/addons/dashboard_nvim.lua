-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		DashboardShortCut({ fg = colors.color2.li(40) }),
		DashboardHeader({ fg = colors.color3 }),
		DashboardCenter({ fg = colors.color10 }),
		DashboardFooter({ fg = colors.brown, gui = "italic" }),
	}
end)
