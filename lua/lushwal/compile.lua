-- luacheck: globals vim

local transformable_bars = {
	{ "lightline", {
		ext = "vim",
		dir = "autoload/lightline/colorscheme/",
	} },
	{ "lualine", {
		ext = "lua",
		lib = "lualine.themes.lushwal",
		dir = "lua/lualine/themes/",
	} },
}
local function bar_buildscript(addon, config)
	local ok, bar_transforms = pcall(require, "shipwright.transform.bars")
	if ok and bar_transforms["to_" .. addon] then
		return [[local barwright = require("shipwright.transform.bars")
cache_dir = xdg("XDG_CONFIG_HOME") .. "/nvim/]] .. config.dir .. [["
vim.fn.mkdir(cache_dir, "p")
run(
	require("lushwal.addons.]] .. addon .. [["),
	{ barwright.to_]] .. addon .. [[, { theme_name = "lushwal" } },
	{ overwrite, cache_dir .. "/lushwal.]] .. config.ext .. [[" }
)
]]
	else
		return ""
	end
end

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
			local script = [[vim.cmd("packadd shipwright.nvim")
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
		"let g:colors_name = 'lushwal'",
	},
},
{ overwrite, cache_dir .. "/lushwal.vim" }
)
]]
			for _, bar in pairs(transformable_bars) do
				if config.addons[bar[1]] then
					script = script .. bar_buildscript(bar[1], bar[2])
				end
			end
			fp:write(script)
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
