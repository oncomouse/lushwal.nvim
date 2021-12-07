-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		BufferLineFill({ bg = colors.color0 }),
		BufferLineBackground({ fg = colors.color7 }),
		BufferLineBufferVisible({ fg = colors.color8 }),
		BufferLineBufferSelected({ fg = colors.color15, bg = colors.color0 }),
		BufferLineTab({ fg = colors.grey, bg = colors.color0 }),
		BufferLineTabSelected({ fg = colors.color5, bg = colors.color6 }),
		BufferLineTabClose({ fg = colors.color5 }),
		BufferLineIndicatorSelected({ fg = colors.brown, bg = colors.color0 }),
		-- separators
		BufferLineSeparator({ fg = colors.background, bg = colors.background }),
		BufferLineSeparatorVisible({ fg = colors.background, bg = colors.background }),
		BufferLineSeparatorSelected({ fg = colors.background, bg = colors.background }),
		-- close buttons
		BufferLineCloseButton({ fg = colors.color8 }),
		BufferLineCloseButtonVisible({ fg = colors.color8 }),
		BufferLineCloseButtonSelected({ fg = colors.color5, bg = colors.color0 }),
	}
end)
