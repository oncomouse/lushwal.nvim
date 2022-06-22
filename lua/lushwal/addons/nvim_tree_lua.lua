-- luacheck: globals vim
-- luacheck: ignore 113
-- Sourced from: https://github.com/catppuccin/nvim
local lush = require("lush")
local colors = require("lushwal").colors
return lush(function()
	-- selene: allow(undefined_variable)
	return {
		NvimTreeFolderName({ fg = colors.cyan }),
		NvimTreeFolderIcon({ fg = colors.cyan }),
		NvimTreeNormal({ fg = colors.white, bg = colors.black }),
		NvimTreeOpenedFolderName({ fg = colors.cyan }),
		NvimTreeEmptyFolderName({ fg = colors.cyan }),
		NvimTreeIndentMarker({ fg = colors.br_grey }),
		NvimTreeVertSplit({ fg = colors.black, bg = colors.black }),
		NvimTreeRootFolder({ fg = colors.red, gui = "bold" }),
		NvimTreeSymlink({ fg = colors.red }),
		NvimTreeStatuslineNc({ fg = colors.black, bg = colors.black }),
		NvimTreeGitDirty({ fg = colors.yellow }),
		NvimTreeGitNew({ fg = colors.cyan }),
		NvimTreeGitDeleted({ fg = colors.orange }),
		NvimTreeSpecialFile({ fg = colors.green.li(40) }),
		NvimTreeImageFile({ fg = colors.white }),
		NvimTreeOpenedFile({ fg = colors.red }),
	}
	-- selene: deny(undefined_variable)
end)
