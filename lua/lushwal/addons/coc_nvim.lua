-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	return {
		CocErrorFloat({ fg = colors.color5 }),
		CocWarningFloat({ fg = colors.color3 }),
		CocInfoFloat({ fg = colors.color4 }),
		CocHintFloat({ fg = colors.color6 }),
		CocDiagnosticsError({ CocErrorFloat }),
		CocDiagnosticsWarning({ CocWarningFloat }),
		CocDiagnosticsInfo({ CocInfoFloat }),
		CocDiagnosticsHint({ CocHintFloat }),
		CocErrorSign({ CocErrorFloat, gui = "bold" }),
		CocWarningSign({ CocWarningFloat, gui = "bold" }),
		CocInfoSign({ CocInfoFloat , gui = "bold"}),
		CocHintSign({ CocHintFloat, gui = "bold" }),
		CocErrorHighlight({ CocErrorFloat, sp = CocErrorFloat.fg, gui = "underline" }),
		CocWarningHighlight({ CocWarningFloat, sp = CocWarningFloat.fg, gui = "underline" }),
		CocInfoHighlight({ CocInfoFloat, sp = CocInfoFloat.fg, gui = "underline" }),
		CocHintHighlight({ CocHintFloat, sp = CocHintFloat.fg, gui = "underline" }),
		CocSelectedText({ fg = colors.purple }),
		CocCodeLens({ fg = colors.color7 }),
	}
end)
