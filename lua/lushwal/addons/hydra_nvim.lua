-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		HydraRed({ fg = colors.red, gui = "bold", cterm = "bold" }),
		HydraBlue({ fg = colors.blue, gui = "bold", cterm = "bold" }),
		HydraPink({ fg = colors.pink, gui = "bold", cterm = "bold" }),
		HydraAmaranth({ fg = colors.amaranth, gui = "bold", cterm = "bold" }),
		HydraTeal({ fg = colors.cyan, gui = "bold", cterm = "bold" }),
	}
	-- selene: deny(undefined_variable)
end)
