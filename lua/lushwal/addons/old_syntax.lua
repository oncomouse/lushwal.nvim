-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.lua")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		csClass({ fg = colors.yellow }),
		csAttribute({ fg = colors.yellow }),
		csModifier({ fg = colors.purple }),
		csType({ fg = colors.red }),
		csUnspecifiedStatement({ fg = colors.blue }),
		csContextualStatement({ fg = colors.purple }),
		csNewDecleration({ fg = colors.red }),
		cOperator({ fg = colors.cyan }),
		cPreCondit({ fg = colors.purple }),

		cssColor({ fg = colors.cyan }),
		cssBraces({ fg = colors.foreground }),
		cssClassName({ fg = colors.purple }),

		htmlBold({ fg = colors.yellow, gui = "bold" }),
		htmlItalic({ fg = colors.purple, gui = "italic" }),
		htmlTag({ fg = colors.cyan }),
		htmlEndTag({ fg = colors.cyan }),
		htmlArg({ fg = colors.yellow }),
		htmlTagName({ fg = colors.foreground }),

		javaScript({ fg = colors.foreground }),
		javaScriptNumber({ fg = colors.red }),
		javaScriptBraces({ fg = colors.foreground }),

		jsonKeyword({ fg = colors.green }),
		jsonQuote({ fg = colors.green }),

		typescriptParens({ fg = colors.foreground }),

		phpComparison({ fg = colors.foreground }),
		phpParent({ fg = colors.foreground }),
		phpMemberSelector({ fg = colors.foreground }),

		pythonRepeat({ fg = colors.purple }),
		pythonOperator({ fg = colors.purple }),

		rubyConstant({ fg = colors.yellow }),
		rubySymbol({ fg = colors.green }),
		rubyAttribute({ fg = colors.blue }),
		rubyInterpolation({ fg = colors.green }),
		rubyInterpolationDelimiter({ fg = colors.brown }),
		rubyStringDelimiter({ fg = colors.green }),
		rubyRegexp({ fg = colors.cyan }),

		sassidChar({ fg = colors.red }),
		sassClassChar({ fg = colors.red }),
		sassInclude({ fg = colors.purple }),
		sassMixing({ fg = colors.purple }),
		sassMixinName({ fg = colors.blue }),

		xmlTag({ fg = colors.cyan }),
		xmlTagName({ fg = colors.foreground }),
		xmlEndTag({ fg = colors.cyan }),
	}
	-- selene: deny(undefined_variable)
end)
