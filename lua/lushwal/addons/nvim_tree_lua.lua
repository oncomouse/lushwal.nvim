-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal.colors")
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NvimTreeFolderName({ fg = colors.color6 }),
		NvimTreeFolderIcon({ fg = colors.color6 }),
		NvimTreeNormal({ fg = colors.color7, bg = colors.color0 }),
		NvimTreeOpenedFolderName({ fg = colors.color6 }),
		NvimTreeEmptyFolderName({ fg = colors.color6 }),
		NvimTreeIndentMarker({ fg = colors.br_grey }),
		NvimTreeVertSplit({ fg = colors.color0, bg = colors.color0 }),
		NvimTreeRootFolder({ fg = colors.color1, gui = "bold" }),
		NvimTreeSymlink({ fg = colors.color1 }),
		NvimTreeStatuslineNc({ fg = colors.color0, bg = colors.color0 }),
		NvimTreeGitDirty({ fg = colors.color3 }),
		NvimTreeGitNew({ fg = colors.color6 }),
		NvimTreeGitDeleted({ fg = colors.color5 }),
		NvimTreeSpecialFile({ fg = colors.color2.li(40) }),
		NvimTreeImageFile({ fg = colors.color7 }),
		NvimTreeOpenedFile({ fg = colors.color1 }),
	}
	-- selene: deny(undefined_variable)
end)
