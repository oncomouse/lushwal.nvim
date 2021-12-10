-- luacheck: globals vim
local to_lightline = function(lightline_configuration, config)
	config = config or {}
	local lines = {
		"let g:lightline#colorscheme#" .. (config.theme_name or "lightline_theme") .. "#palette = " .. vim.api.nvim_exec(
			"echo luaeval('" .. vim.inspect(lightline_configuration):gsub("\n", ""):gsub("'", "\\'") .. "')",
			true
		),
	}
	return lines
end

local to_lualine = function(lualine_configuration)
	return vim.split("return " .. vim.inspect(lualine_configuration), "\n")
end

return {
	to_lightline = to_lightline,
	to_lualine = to_lualine,
}
