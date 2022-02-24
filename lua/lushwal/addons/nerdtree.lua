-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NERDTreeExecFile({ fg = colors.foreground }),
		NERDTreeDirSlash({ fg = colors.color4 }),
		NERDTreeOpenable({ fg = colors.color4 }),
		NERDTreeFlags({ fg = colors.color4 }),
	}
	-- selene: deny(undefined_variable)
end)
