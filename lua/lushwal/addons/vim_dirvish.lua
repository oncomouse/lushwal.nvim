-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		DirvishPathTail({ fg = colors.blue }),
		DirvishArg({ fg = colors.red }),
	}
	-- selene: deny(undefined_variable)
end)
