-- luacheck: globals vim
local function lushwal_compile()
	local config = require("lushwal").config
	if config.compile_to_vimscript then
		vim.cmd([[packadd lush.nvim]])
		vim.cmd([[packadd shipwright.nvim]])
		if vim.fn.exists(":Shipwright") ~= 0 then
			local xdg = require("lushwal.utils.xdg")
			local cache_path = xdg("XDG_CACHE_HOME") .. "/lushwal"
			vim.fn.mkdir(cache_path, "p")
			local fp = io.open(cache_path .. "/shipwright_build.lua", "w")
			fp:write([[vim.cmd("packadd shipwright.nvim")
vim.cmd("packadd lush.nvim")
local xdg = require("lushwal.utils.xdg")
local colorscheme = require("lushwal").scheme
local lushwright = require("shipwright.transform.lush")

local cache_dir = xdg("XDG_CONFIG_HOME") .. "/nvim/colors"
vim.fn.mkdir(cache_dir, "p")
run(
colorscheme,
lushwright.to_vimscript,
{
	prepend,
	{
		"set background=dark",
		"if exists('g:colors_name')",
		"hi clear",
		"if exists('syntax_on')",
		"syntax reset",
		"endif",
		"endif",
		"let g:colors_name = 'wal'",
	},
},]] ..
(config.addons.lightspeed_nvim and [[
{
	prepend,
	{
		"augroup lushwal_lightspeed",
		"autocmd!",
		"autocmd ColorScheme * lua ok,ls = pcal(require, 'lightspeed'); if ok then ls.init_highlight(true) end",
		"augroup END",

	}
},]] or "") ..
[[{ overwrite, cache_dir .. "/lushwal.vim" }
)
]])
			fp:close()
			vim.cmd("Shipwright " .. cache_path .. "/shipwright_build.lua")
			print("[Lushwal.nvim] Vimscript compilation is done.")
		else
			error(
				"Shipwright is required to compile this colorscheme. If you do not wish to compile, set vim.g.lushwal_configuration.compile_to_vimscript to false."
			)
		end
	end
end

return lushwal_compile
