-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		mkdCode({ fg = colors.color2 }),
		mkdCodeBlock({ fg = colors.color2 }),
		mkdHeadingDelimiter({ fg = colors.color4 }),
		mkdH1({ fg = colors.color4, gui = "bold" }),
		mkdH2({ fg = colors.color4, gui = "bold" }),
		mkdItalic({ fg = colors.purple, gui = "italic" }),
		mkdBold({ fg = colors.color3, gui = "bold" }),
		mkdCodeDelimiter({ fg = colors.brown, gui = "italic" }),
		mkdError({ fg = colors.foreground, bg = colors.background }),

		markdownCode({ mkdCode }),
		markdownCodeBlock({ mkdCodeBlock }),
		markdownHeadingDelimiter({ mkdHeadingDelimiter }),
		markdownH1({ mkdH1 }),
		markdownH2({ mkdH2 }),
		markdownItalic({ mkdItalic }),
		markdownBold({ mkdBold }),
		markdownCodeDelimiter({ mkdCodeDelimiter }),
		markdownError({ mkdError }),

	}
	-- selene: deny(undefined_variable)
end)

