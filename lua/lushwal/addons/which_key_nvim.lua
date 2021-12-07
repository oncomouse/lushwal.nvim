-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		WhichKey({ fg = colors.color2.li(40) }),
		WhichKeyGroup({ fg = colors.color6 }),
		WhichKeyDesc({ fg = colors.color1 }),
		WhichKeySeperator({ fg = colors.br_grey }),
		WhichKeySeparator({ fg = colors.br_grey }),
		WhichKeyFloat({ bg = colors.color0 }),
		WhichKeyValue({ fg = colors.br_grey }),
	}
end)
