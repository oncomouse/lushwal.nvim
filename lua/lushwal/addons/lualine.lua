local colors = require("lushwal.colors")

return {
	visual = {
		a = { fg = colors.color2, bg = colors.color3, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	replace = {
		a = { fg = colors.color2, bg = colors.color8, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
	inactive = {
		a = { fg = colors.color4, bg = colors.color5, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
		c = { fg = colors.color4, bg = colors.color2 },
	},
	normal = {
		a = { fg = colors.color2, bg = colors.color10, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
		c = { fg = colors.color9, bg = colors.color2 },
	},
	insert = {
		a = { fg = colors.color2, bg = colors.color13, gui = "bold" },
		b = { fg = colors.color4, bg = colors.color5 },
	},
}

