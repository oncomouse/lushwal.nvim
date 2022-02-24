-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		LspFloatWinNormal({ bg = colors.color0 }),
		LspFloatWinBorder({ fg = colors.color6 }),
		LspSagaBorderTitle({ fg = colors.color2.li(40) }),
		LspSagaHoverBorder({ fg = colors.color6 }),
		LspSagaRenameBorder({ fg = colors.color10 }),
		LspSagaDefPreviewBorder({ fg = colors.color10 }),
		LspSagaCodeActionBorder({ fg = colors.color6 }),
		LspSagaFinderSelection({ fg = colors.color8 }),
		LspSagaCodeActionTitle({ fg = colors.color6 }),
		LspSagaCodeActionContent({ fg = colors.purple }),
		LspSagaSignatureHelpBorder({ fg = colors.color5 }),
		ReferencesCount({ fg = colors.purple }),
		DefinitionCount({ fg = colors.purple }),
		DefinitionIcon({ fg = colors.color6 }),
		ReferencesIcon({ fg = colors.color6 }),
		TargetWord({ fg = colors.color2.li(40) }),
	}
	-- selene: deny(undefined_variable)
end)
