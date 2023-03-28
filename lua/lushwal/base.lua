if not package.loaded["lazy"] then
	vim.cmd("packadd lush.nvim")
end
local lush = require("lush")

local colors = require("lushwal").colors
local scheme = lush(function()
	if not colors then
		return {}
	end
	-- selene: allow(undefined_variable)
	return {
		Normal({ fg = colors.foreground, bg = colors.background }),
		Bold({ Normal, gui = "bold" }),
		Italic({ Normal, gui = "italic" }),

		Debug({ fg = colors.red }),
		Directory({ fg = colors.blue }),
		Error({ fg = colors.red, bg = colors.color15 }),
		ErrorMsg({ fg = colors.red, bg = colors.background }),
		Exception({ fg = colors.red }),
		FoldColumn({ fg = colors.blue, bg = colors.background }),
		Folded({ fg = colors.white, bg = colors.br_black, gui = "italic" }),
		IncSearch({ fg = colors.br_black, bg = colors.orange }),

		VertSplit({ fg = colors.white, bg = colors.background }),
		WinSeparator({ VertSplit }),

		Macro({ fg = colors.red }),
		MatchParen({ fg = colors.foreground, bg = colors.br_grey }),
		ModeMsg({ fg = colors.green }),
		MoreMsg({ fg = colors.green }),
		Question({ fg = colors.blue }),
		Search({ fg = colors.br_grey, bg = colors.yellow }),
		SpecialKey({ fg = colors.br_grey }),
		TooLong({ fg = colors.red }),
		Underlined({ fg = colors.red }),
		Visual({ bg = colors.grey, fg = colors.background }),
		VisualNOS({ fg = colors.red }),
		WarningMsg({ fg = colors.red }),
		WildMenu({ fg = colors.foreground, bg = colors.blue }),
		Title({ fg = colors.blue, gui = "bold" }),
		Conceal({ fg = colors.br_black, bg = colors.background }),
		Whitespace({ Conceal }),
		Cursor({ fg = colors.background, bg = colors.foreground }),
		NonText({ fg = colors.br_grey }),
		EndOfBuffer({ fg = colors.foreground, bg = colors.background }),
		SignColumn({ fg = colors.grey, bg = colors.background }),
		LineNr({ fg = colors.br_grey, bg = colors.background }),
		ColorColumn({ fg = colors.grey }),
		CursorColumn({ fg = colors.grey }),
		CursorLine({ fg = colors.br_black, gui = "None" }),
		CursorLineNr({ fg = colors.white, bg = colors.background, gui = "None" }),
		PMenu({ fg = colors.white, bg = colors.br_black }),
		PMenuSel({ fg = colors.foreground, bg = colors.blue }),
		PmenuSbar({ fg = colors.grey }),
		PmenuThumb({ fg = colors.foreground }),
		TabLine({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineFill({ fg = colors.br_grey, bg = colors.br_black }),
		TabLineSel({ fg = colors.green, bg = colors.br_black }),
		helpExample({ fg = colors.yellow }),
		helpCommand({ fg = colors.yellow }),

		Boolean({ fg = colors.orange }),
		Character({ fg = colors.red }),
		Comment({ fg = colors.white, gui = "italic" }),
		Conditional({ fg = colors.purple }),
		Constant({ fg = colors.orange }),
		Define({ fg = colors.purple }),
		Delimiter({ fg = colors.brown }),
		Float({ fg = colors.orange }),
		Function({ fg = colors.blue }),

		Identifier({ fg = colors.cyan }),
		Include({ fg = colors.blue }),
		Keyword({ fg = colors.purple }),

		Label({ fg = colors.yellow }),
		Number({ fg = colors.orange }),
		Operator({ fg = colors.foreground }),
		PreProc({ fg = colors.yellow }),
		Repeat({ fg = colors.yellow }),
		Special({ fg = colors.cyan }),
		SpecialChar({ fg = colors.brown }),
		Statement({ fg = colors.red }),
		StorageClass({ fg = colors.yellow }),
		String({ fg = colors.green }),
		Structure({ fg = colors.purple }),
		Tag({ fg = colors.yellow }),
		Todo({ fg = colors.yellow, bg = colors.br_black }),
		Type({ fg = colors.yellow }),
		Typedef({ fg = colors.yellow }),

		SpellBad({ gui = "underline", fg = colors.red, sp = colors.red }),
		SpellLocal({ gui = "underline", fg = colors.cyan, sp = colors.cyan }),
		SpellCap({ gui = "underline", fg = colors.yellow, sp = colors.yellow }),
		SpellRare({ gui = "underline", fg = colors.purple, sp = colors.purple }),

		StatusLine({ fg = colors.white, bg = colors.br_black }),
		StatusLineNC({ fg = colors.grey, bg = colors.br_black }),
		StatusLineTerm({ fg = colors.br_green, bg = colors.green }),
		StatusLineTermNC({ fg = colors.br_yellow, bg = colors.br_black }),
		WinBar({ fg = colors.white, bg = colors.background, gui = "None"}),
		WinBarNC({ fg = colors.grey, bg = colors.background, gui = "None" }),
		User({ Normal }),

		DiffAdd({ fg = colors.green, bg = colors.br_black, gui = "bold" }),
		DiffChange({ fg = colors.br_grey, bg = colors.br_black }),
		DiffDelete({ fg = colors.red, bg = colors.br_black, gui = "bold" }),
		DiffText({ fg = colors.blue, bg = colors.br_black }),
		DiffFile({ fg = colors.red, bg = colors.background }),
		DiffNewFile({ fg = colors.green, bg = colors.background }),
		DiffLine({ fg = colors.blue, bg = colors.background }),
		DiffAdded({ DiffAdd }),
		DiffRemoved({ DiffDelete }),
		diffRemoved({ DiffDelete }),

		gitCommitOverflow({ fg = colors.red }),
		gitCommitSummary({ fg = colors.green }),
	}
	-- selene: deny(undefined_variable)
end)

return scheme
