-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		BufferLineFill({ bg = colors.black }),
		BufferLineBackground({ fg = colors.white }),
		BufferLineBufferVisible({ fg = colors.br_black }),
		BufferLineBufferSelected({ fg = colors.br_white, bg = colors.black }),
		BufferLineTab({ fg = colors.grey, bg = colors.black }),
		BufferLineTabSelected({ fg = colors.orange, bg = colors.cyan }),
		BufferLineTabClose({ fg = colors.orange }),
		BufferLineIndicatorSelected({ fg = colors.brown, bg = colors.black }),
		-- separators
		BufferLineSeparator({ fg = colors.background, bg = colors.background }),
		BufferLineSeparatorVisible({ fg = colors.background, bg = colors.background }),
		BufferLineSeparatorSelected({ fg = colors.background, bg = colors.background }),
		-- close buttons
		BufferLineCloseButton({ fg = colors.br_black }),
		BufferLineCloseButtonVisible({ fg = colors.br_black }),
		BufferLineCloseButtonSelected({ fg = colors.orange, bg = colors.black }),
	}
	-- selene: deny(undefined_variable)
end)
