-- luacheck: globals vim
vim.cmd("packadd lush.nvim")
local lush = require("lush")
local default_configuration = require("lushwal.config")

local function merge_configuration()
	return vim.tbl_deep_extend("force", default_configuration, vim.g.lushwal_configuration or {})
end

local M = {}
local config = {}
local colors = {}
M.compile = require("lushwal.compile")
local addons_to_skip = {
	"lightline",
	"lualine",
}
setmetatable(M, {
	__index = function(lushwal, key)
		if key == "config" then
			if #config == 0 then
				config = merge_configuration()
			end
			return config
		elseif key == "scheme" then
			local cfg = lushwal.config
			local scheme = require("lushwal.base")

			-- Merge desired addons:
			for _, addon in pairs(vim.tbl_filter(function(x)
				return cfg.addons[x] == true
			end, vim.tbl_keys(cfg.addons))) do
				if not vim.tbl_contains(addons_to_skip, addon) then
					xpcall(function()
						scheme = lush.merge({ scheme, require("lushwal.addons." .. addon) })
					end, function(err)
						error("There was an error loading lushwal.addons." .. addon .. "\n\n Error: ".. err)
					end)
				end
			end
			return scheme
		elseif key == "colors" then
			if #colors == 0 then
				local cfg = lushwal.config
				colors = require("lushwal.colors")
				if type(cfg.color_overrides) == "function" then
					colors = cfg.color_overrides(colors)
				elseif type(cfg.color_overrides) == "table" then
					colors = vim.tbl_extend("force", colors, cfg.color_overrides)
				end
			end
			return colors
		else
			return lushwal[key]
		end
	end,
})

return M
