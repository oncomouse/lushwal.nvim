-- luacheck: globals vim
vim.cmd("packadd lush.nvim")
local lush = require("lush")
local default_configuration = require("lushwal.config")

local function merge_configuration()
	return vim.tbl_deep_extend("force", default_configuration, vim.g.lushwal_configuration or {})
end

local M = {}
M.compile = require("lushwal.compile")
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
				if addon == "lightline" then
					require("lushwal.addons.lightline")
				else
					scheme = lush.merge({ scheme, require("lushwal.addons." .. addon) })
				end
			end
			return scheme
		else
			return lushwal[key]
		end
	end,
})

return M
