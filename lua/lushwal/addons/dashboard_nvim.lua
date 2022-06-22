-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		DashboardShortCut({ fg = colors.green.li(40) }),
		DashboardHeader({ fg = colors.yellow }),
		DashboardCenter({ fg = colors.br_green }),
		DashboardFooter({ fg = colors.brown, gui = "italic" }),
	}
	-- selene: deny(undefined_variable)
end)
