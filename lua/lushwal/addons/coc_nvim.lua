-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		CocErrorFloat({ fg = colors.orange }),
		CocWarningFloat({ fg = colors.yellow }),
		CocInfoFloat({ fg = colors.blue }),
		CocHintFloat({ fg = colors.cyan }),
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
		CocCodeLens({ fg = colors.white }),
	}
	-- selene: deny(undefined_variable)
end)
