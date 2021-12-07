-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		NeogitBranch({ fg = colors.color1 }),
		NeogitRemote({ fg = colors.color1 }),
		NeogitHunkHeader({ bg = colors.color6, fg = colors.color7 }),
		NeogitHunkHeaderHighlight({ bg = colors.grey, fg = colors.color6 }),
		NeogitDiffContextHighlight({ bg = colors.color0, fg = colors.color15 }),
		NeogitDiffDeleteHighlight({ fg = colors.color5, bg = colors.color0 }),
		NeogitDiffAddHighlight({ fg = colors.color6, bg = colors.color0 }),
	}
end)
