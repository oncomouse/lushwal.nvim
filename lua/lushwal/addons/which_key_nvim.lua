-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		WhichKey({ fg = colors.green.li(40) }),
		WhichKeyGroup({ fg = colors.cyan }),
		WhichKeyDesc({ fg = colors.red }),
		WhichKeySeperator({ fg = colors.br_grey }),
		WhichKeySeparator({ fg = colors.br_grey }),
		WhichKeyFloat({ bg = colors.black }),
		WhichKeyValue({ fg = colors.br_grey }),
	}
	-- selene: deny(undefined_variable)
end)
