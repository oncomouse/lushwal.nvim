-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		CocErrorSign({ fg = colors.color5 }),
		CocWarningSign({ fg = colors.color3 }),
		CocInfoSign({ fg = colors.color4 }),
		CocHintSign({ fg = colors.color6 }),
		CocErrorFloat({ fg = colors.color5 }),
		CocWarningFloat({ fg = colors.color3 }),
		CocInfoFloat({ fg = colors.color4 }),
		CocHintFloat({ fg = colors.color6 }),
		CocDiagnosticsError({ fg = colors.color5 }),
		CocDiagnosticsWarning({ fg = colors.color3 }),
		CocDiagnosticsInfo({ fg = colors.color4 }),
		CocDiagnosticsHint({ fg = colors.color6 }),
		CocSelectedText({ fg = colors.purple }),
		CocCodeLens({ fg = colors.color7 }),
	}
end)
