-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		mkdCode({ fg = colors.green }),
		mkdCodeBlock({ fg = colors.green }),
		mkdHeadingDelimiter({ fg = colors.blue }),
		mkdH1({ fg = colors.blue, gui = "bold" }),
		mkdH2({ fg = colors.blue, gui = "bold" }),
		mkdItalic({ fg = colors.purple, gui = "italic" }),
		mkdBold({ fg = colors.yellow, gui = "bold" }),
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

