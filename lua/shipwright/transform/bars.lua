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
	local mapped_configuration = {}
	for k,v in pairs(lualine_configuration) do
		local new_entry = {}
		for key,sch in pairs(v) do
			local new_scheme = {}
			for type,entry in pairs(sch) do
				if type == "gui" then
					new_scheme[type] = entry
				else
					new_scheme[type] = entry.hex
				end
			end
			new_entry[key] = new_scheme
		end
		mapped_configuration[k] = new_entry
	end
	return vim.split("return " .. vim.inspect(mapped_configuration), "\n")
end

return {
	to_lightline = to_lightline,
	to_lualine = to_lualine,
}
