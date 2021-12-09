-- luacheck: globals vim
local to_lightline = function(lightline_configuration)
	local lines = {
		"let g:lightline#colorscheme#ayu_mirage#palette = " .. vim.api.nvim_exec(
			"echo luaeval('" .. vim.inspect(lightline_configuration):gsub("\n", ""):gsub("'", "\\'") .. "')", true
		),
	}
	return lines
end

return {
	to_lightline = to_lightline,
}
