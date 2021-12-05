-- luacheck: globals vim
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
package.loaded["lushwal"] = nil
local ok, lushwal = pcall(require, "lushwal.cached")
if ok then
	lushwal.setup()
else
	require("lush")(require("lushwal"))
	vim.cmd([[packadd shipwright.nvim]])
	if vim.fn.exists(":Shipwright") ~= 0 then
		local xdg = require("lushwal.utils.xdg")
		local cache_path = xdg("XDG_CACHE_HOME") .. "/lushwal"
		vim.fn.mkdir(cache_path, "p")
		local fp = io.open(cache_path .. "/shipwright_build.lua", "w")
		fp:write([===[local xdg = require("lushwal.utils.xdg")
local colorscheme = require("lushwal")
local lushwright = require("shipwright.transform.lush")

local cache_dir = xdg("XDG_CONFIG_HOME") .. "/nvim/lua/lushwal"
vim.fn.mkdir(cache_dir, "p")
run(colorscheme,
	lushwright.to_lua,
	{append, {"return { setup = function() lush_apply(lush_groups) end, }"}},
	{overwrite, cache_dir .. "/cached.lua"})
]===])
		fp:close()
		vim.cmd("Shipwright " .. cache_path .. "/shipwright_build.lua")
	end
end
