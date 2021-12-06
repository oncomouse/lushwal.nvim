-- luacheck: globals vim
local default_configuration = {
	compile_to_vimscript = true,
	addons = {
		barbar = false,
	}
}

return(vim.tbl_extend(
	"force",
	default_configuration,
	vim.g.lushwal_configuration or {}
))
