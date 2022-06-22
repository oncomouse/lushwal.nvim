-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		DirvishPathTail({ fg = colors.color4 }),
		DirvishArg({ fg = colors.color5 }),
	}
	-- selene: deny(undefined_variable)
end)
