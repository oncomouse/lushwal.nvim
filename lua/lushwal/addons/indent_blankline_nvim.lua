-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		IndentBlanklineChar({ gui = "nocombine", fg = colors.br_black }),
		IndentBlanklineContextChar({ gui = "nocombine", fg = colors.white }),
		IndentBlanklineContextStart({ gui = "underline", sp = colors.white }),
	}
	-- selene: deny(undefined_variable)
end)
