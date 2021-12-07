-- luacheck: globals vim
-- luacheck: ignore 113
vim.cmd("packadd lush.nvim")
local lush = require("lush")

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
	}
end)

-- Merge desired addons:
local config = require("lushwal.config")
for _, addon in pairs(vim.tbl_filter(function(x)
	return config.addons[x] == true
end, vim.tbl_keys(config.addons))) do
	scheme = lush.merge({ scheme, require("lushwal.addons." .. addon) })
end

return scheme
