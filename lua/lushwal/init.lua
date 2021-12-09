-- luacheck: globals vim
vim.cmd("packadd lush.nvim")
local lush = require("lush")
local default_configuration = require("lushwal.config")

local function merge_configuration()
	return vim.tbl_deep_extend("force", default_configuration, vim.g.lushwal_configuration or {})
end

local M = {}
M.compile = require("lushwal.compile")
local addons_to_skip = {
	"lightline",
	"lualine",
}
setmetatable(M, {
	__index = function(lushwal, key)
		if key == "config" then
			return merge_configuration()
		elseif key == "scheme" then
			local config = merge_configuration()
			local scheme = require("lushwal.base")

			-- Merge desired addons:
			for _, addon in pairs(vim.tbl_filter(function(x)
				return config.addons[x] == true
			end, vim.tbl_keys(config.addons))) do
				if not vim.tbl_contains(addons_to_skip, addon) then
					xpcall(function()
						scheme = lush.merge({ scheme, require("lushwal.addons." .. addon) })
					end, function(err)
						error("There was an error loading lushwal.addons." .. addon .. "\n\n Error: ".. err)
					end)
				end
			end
			return scheme
		else
			return lushwal[key]
		end
	end,
})

return M
