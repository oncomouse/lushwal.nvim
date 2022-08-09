-- luacheck: globals vim
-- luacheck: ignore 113
local lush = require("lush")
local colors = require("lushwal").colors
local base = require("lushwal.base")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		MiniCompletionActiveParameter({}),
		MiniCursorword({ cterm = "underline", gui = "underline" }),
		MiniCursorwordCurrent({ MiniCursorword }),
		MiniIndentscopeSymbol({ fg = colors.br_black, bg = colors.background }),
		MiniIndentscopePrefix({ gui = "nocombine" }),
		MiniJump({ fg = colors.blue, gui = "underline", sp = colors.br_grey }),
		MiniJump2dSpot({ gui = "undercurl", guisp = colors.blue }),
		MiniStarterCurrent({}),
		MiniStarterFooter({ fg = colors.blue, gui = "bold" }),
		MiniStarterHeader({ fg = colors.blue, gui = "bold" }),
		MiniStarterInactive({ fg = colors.white, gui = "italic" }),
		MiniStarterItem({ fg = colors.foreground, bg = colors.background }),
		MiniStarterItemBullet({ fg = colors.brown }),
		MiniStarterItemPrefix({ fg = colors.red }),
		MiniStarterSection({ fg = colors.brown }),
		MiniStarterQuery({ fg = colors.green }),
		MiniStatuslineModeNormal({ bg = colors.green, fg = colors.background }),
		MiniStatuslineModeInsert({ bg = colors.blue, fg = colors.background }),
		MiniStatuslineModeVisual({ bg = colors.orange, fg = colors.background }),
		MiniStatuslineModeReplace({ bg = colors.red, fg = colors.background }),
		MiniStatuslineModeCommand({ bg = colors.cyan, fg = colors.background }),
		MiniStatuslineModeOther({ bg = colors.purple, fg = colors.background }),
		MiniStatuslineDevinfo({ fg = colors.white, bg = colors.br_black }),
		MiniStatuslineFilename({ fg = colors.yellow, bg = colors.br_black }),
		MiniStatuslineFileinfo({ fg = colors.white, bg = colors.br_black }),
		MiniStatuslineInactive({ fg = colors.grey, bg = colors.br_black }),
		MiniSurround({ fg = colors.br_black, bg = colors.orange }),
		MiniTablineCurrent({ fg = colors.br_grey, bg = colors.br_black }),
		MiniTablineVisible({ fg = colors.br_grey, bg = colors.br_black }),
		MiniTablineHidden({ fg = colors.green, bg = colors.br_black }),
		MiniTablineModifiedCurrent({ fg = colors.white, bg = colors.br_black }),
		MiniTablineModifiedVisible({ fg = colors.white, bg = colors.br_black }),
		MiniTablineModifiedHidden({ fg = colors.grey, bg = colors.br_black }),
		MiniTablineTabpagesection({ base.Search }),
		MiniTablineFill({}),
		MiniTestFail({ guifg = colors.color1, gui = "bold" }),
		MiniTestPass({ guifg = colors.color2, gui = "bold" }),
		MiniTestEmphasis({ gui = "bold" }),
		MiniTrailspace({ fg = colors.red, bg = colors.color15 }),
	}
	-- selene: deny(undefined_variable)
end)
