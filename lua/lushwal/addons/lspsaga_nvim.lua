-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		LspFloatWinNormal({ bg = colors.black }),
		LspFloatWinBorder({ fg = colors.cyan }),
		LspSagaBorderTitle({ fg = colors.green.li(40) }),
		LspSagaHoverBorder({ fg = colors.cyan }),
		LspSagaRenameBorder({ fg = colors.br_green }),
		LspSagaDefPreviewBorder({ fg = colors.br_green }),
		LspSagaCodeActionBorder({ fg = colors.cyan }),
		LspSagaFinderSelection({ fg = colors.br_black }),
		LspSagaCodeActionTitle({ fg = colors.cyan }),
		LspSagaCodeActionContent({ fg = colors.purple }),
		LspSagaSignatureHelpBorder({ fg = colors.red }),
		ReferencesCount({ fg = colors.purple }),
		DefinitionCount({ fg = colors.purple }),
		DefinitionIcon({ fg = colors.cyan }),
		ReferencesIcon({ fg = colors.cyan }),
		TargetWord({ fg = colors.green.li(40) }),
	}
	-- selene: deny(undefined_variable)
end)
