-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")

local config = require("lushwal.config")
local colors = require("lushwal.colors")

local scheme = lush(function()
	if not colors then
		return {}
	end
	return {
		Normal({ fg = colors.foreground, bg = colors.background }),
		Bold({ Normal, gui = "bold" }),
		Italic({ Normal, gui = "italic" }),

		Debug({ fg = colors.color5 }),
		Directory({ fg = colors.color4 }),
		ErrorMsg({ fg = colors.color5, bg = colors.background }),
		Exception({ fg = colors.color5 }),
		FoldColumn({ fg = colors.color4, bg = colors.background }),
		Folded({ fg = colors.color7, bg = colors.color8, gui = "italic" }),
		IncSearch({ fg = colors.color8, bg = colors.color1 }),

		Macro({ fg = colors.color5 }),
		MatchParen({ fg = colors.foreground, bg = colors.br_grey }),
		ModeMsg({ fg = colors.color2 }),
		MoreMsg({ fg = colors.color2 }),
		Question({ fg = colors.color4 }),
		Search({ fg = colors.br_grey, bg = colors.color3 }),
		SpecialKey({ fg = colors.br_grey }),
		TooLong({ fg = colors.color5 }),
		Underlined({ fg = colors.color5 }),
		Visual({ bg = colors.grey, fg = colors.background }),
		VisualNOS({ fg = colors.color5 }),
		WarningMsg({ fg = colors.color5 }),
		WildMenu({ fg = colors.foreground, bg = colors.color4 }),
		Title({ fg = colors.color4, gui = "bold" }),
		Conceal({ fg = colors.color8, bg = colors.background }),
		Cursor({ fg = colors.background, bg = colors.foreground }),
		NonText({ fg = colors.br_grey }),
		EndOfBuffer({ fg = colors.foreground, bg = colors.background }),
		SignColumn({ fg = colors.grey, bg = colors.background }),
		LineNr({ fg = colors.br_grey, bg = colors.background }),
		VertSplit({ fg = colors.background, bg = colors.grey }),
		ColorColumn({ fg = colors.grey }),
		CursorColumn({ fg = colors.grey }),
		CursorLine({ fg = colors.color8, gui = "None" }),
		CursorLineNr({ fg = colors.color7, bg = colors.background, gui = "None" }),
		PMenu({ fg = colors.color7, bg = colors.color8 }),
		PMenuSel({ fg = colors.foreground, bg = colors.color4 }),
		PmenuSbar({ fg = colors.grey }),
		PmenuThumb({ fg = colors.foreground }),
		TabLine({ fg = colors.br_grey, bg = colors.color8 }),
		TabLineFill({ fg = colors.br_grey, bg = colors.color8 }),
		TabLineSel({ fg = colors.color2, bg = colors.color8 }),
		helpExample({ fg = colors.color3 }),
		helpCommand({ fg = colors.color3 }),

		Boolean({ fg = colors.color1 }),
		Character({ fg = colors.color5 }),
		Comment({ fg = colors.color7, gui = "italic" }),
		Conditional({ fg = colors.purple }),
		Constant({ fg = colors.color1 }),
		Define({ fg = colors.purple }),
		Delimiter({ fg = colors.brown }),
		Float({ fg = colors.color1 }),
		Function({ fg = colors.color4 }),

		Identifier({ fg = colors.color6 }),
		Include({ fg = colors.color4 }),
		Keyword({ fg = colors.purple }),

		Label({ fg = colors.color3 }),
		Number({ fg = colors.color1 }),
		Operator({ fg = colors.foreground }),
		PreProc({ fg = colors.color3 }),
		Repeat({ fg = colors.color3 }),
		Special({ fg = colors.color6 }),
		SpecialChar({ fg = colors.brown }),
		Statement({ fg = colors.color5 }),
		StorageClass({ fg = colors.color3 }),
		String({ fg = colors.color2 }),
		Structure({ fg = colors.purple }),
		Tag({ fg = colors.color3 }),
		Todo({ fg = colors.color3, bg = colors.color8 }),
		Type({ fg = colors.color3 }),
		Typedef({ fg = colors.color3 }),

		SpellBad({ gui = "underline", fg = colors.color5, sp = colors.color5 }),
		SpellLocal({ gui = "underline", fg = colors.color6, sp = colors.color6 }),
		SpellCap({ gui = "underline", fg = colors.color3, sp = colors.color3 }),
		SpellRare({ gui = "underline", fg = colors.purple, sp = colors.purple }),

		StatusLine({ fg = colors.color7, bg = colors.color8 }),
		StatusLineNC({ fg = colors.grey, bg = colors.color8 }),
		StatusLineTerm({ fg = colors.color10, bg = colors.color2 }),
		StatusLineTermNC({ fg = colors.color11, bg = colors.color8 }),
		User({ Normal }),

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

		DiffAdd({ fg = colors.color2, bg = colors.color8, gui = "bold" }),
		DiffChange({ fg = colors.br_grey, bg = colors.color8 }),
		DiffDelete({ fg = colors.color5, bg = colors.color8, gui = "bold" }),
		DiffText({ fg = colors.color4, bg = colors.color8 }),
		DiffFile({ fg = colors.color5, bg = colors.background }),
		DiffNewFile({ fg = colors.color2, bg = colors.background }),
		DiffLine({ fg = colors.color4, bg = colors.background }),
		DiffAdded({ DiffAdd }),
		DiffRemoved({ DiffDelete }),
		diffRemoved({ DiffDelete }),

		gitCommitOverflow({ fg = colors.color5 }),
		gitCommitSummary({ fg = colors.color2 }),

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

		markdownCode({ fg = colors.color2 }),
		markdownCodeBlock({ fg = colors.color2 }),
		markdownHeadingDelimiter({ fg = colors.color4 }),
		markdownItalic({ fg = colors.purple, gui = "italic" }),
		markdownBold({ fg = colors.color3, gui = "bold" }),
		markdownCodeDelimiter({ fg = colors.brown, gui = "italic" }),
		markdownError({ fg = colors.foreground, bg = colors.background }),

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

-- Merge desired addons:
for addon,_ in pairs(vim.tbl_filter(function(x) return x==true end, config.addons)) do
	scheme = lush.merge({ scheme, require("lushwal.addons." .. addon)})
end

return scheme
