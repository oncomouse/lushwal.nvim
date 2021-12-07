-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.lua")
return lush(function()
	return {
		csClass({ fg = colors.color3 }),
		csAttribute({ fg = colors.color3 }),
		csModifier({ fg = colors.purple }),
		csType({ fg = colors.color5 }),
		csUnspecifiedStatement({ fg = colors.color4 }),
		csContextualStatement({ fg = colors.purple }),
		csNewDecleration({ fg = colors.color5 }),
		cOperator({ fg = colors.color6 }),
		cPreCondit({ fg = colors.purple }),

		cssColor({ fg = colors.color6 }),
		cssBraces({ fg = colors.foreground }),
		cssClassName({ fg = colors.purple }),

		htmlBold({ fg = colors.color3, gui = "bold" }),
		htmlItalic({ fg = colors.purple, gui = "italic" }),
		htmlTag({ fg = colors.color6 }),
		htmlEndTag({ fg = colors.color6 }),
		htmlArg({ fg = colors.color3 }),
		htmlTagName({ fg = colors.foreground }),

		javaScript({ fg = colors.foreground }),
		javaScriptNumber({ fg = colors.color1 }),
		javaScriptBraces({ fg = colors.foreground }),

		jsonKeyword({ fg = colors.color2 }),
		jsonQuote({ fg = colors.color2 }),

		typescriptParens({ fg = colors.foreground }),

		phpComparison({ fg = colors.foreground }),
		phpParent({ fg = colors.foreground }),
		phpMemberSelector({ fg = colors.foreground }),

		pythonRepeat({ fg = colors.purple }),
		pythonOperator({ fg = colors.purple }),

		rubyConstant({ fg = colors.color3 }),
		rubySymbol({ fg = colors.color2 }),
		rubyAttribute({ fg = colors.color4 }),
		rubyInterpolation({ fg = colors.color2 }),
		rubyInterpolationDelimiter({ fg = colors.brown }),
		rubyStringDelimiter({ fg = colors.color2 }),
		rubyRegexp({ fg = colors.color6 }),

		sassidChar({ fg = colors.color5 }),
		sassClassChar({ fg = colors.color1 }),
		sassInclude({ fg = colors.purple }),
		sassMixing({ fg = colors.purple }),
		sassMixinName({ fg = colors.color4 }),

		xmlTag({ fg = colors.color6 }),
		xmlTagName({ fg = colors.foreground }),
		xmlEndTag({ fg = colors.color6 }),
	}
end)
