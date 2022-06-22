-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NeogitBranch({ fg = colors.red }),
		NeogitRemote({ fg = colors.red }),
		NeogitHunkHeader({ bg = colors.cyan, fg = colors.white }),
		NeogitHunkHeaderHighlight({ bg = colors.grey, fg = colors.cyan }),
		NeogitDiffContextHighlight({ bg = colors.black, fg = colors.br_white }),
		NeogitDiffDeleteHighlight({ fg = colors.orange, bg = colors.black }),
		NeogitDiffAddHighlight({ fg = colors.cyan, bg = colors.black }),
	}
	-- selene: deny(undefined_variable)
end)
