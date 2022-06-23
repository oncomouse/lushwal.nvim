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
			if cfg.support_cterm then
				local clrs = lushwal.colors
				local translations = {
					black = 0,
					red = 1,
					green = 2,
					yellow = 3,
					blue = 4,
					magenta = 5,
					cyan = 6,
					white = 7,
					br_black = 8,
					br_red = 9,
					br_green = 10,
					br_yellow = 11,
					br_blue = 12,
					br_magenta = 13,
					br_cyan = 14,
					br_white = 15,
					orange = 209,
					purple = 135,
					grey = 240,
					br_grey = 246,
					brown = 130,
					pink = 212,
					amaranth = 164,
				}
				local guess_cterm = function(clr)
					for color_name, ansi_code in pairs(translations) do
						if clr.hex == clrs[color_name].hex then
							return ansi_code
						end
					end
					return nil
				end
				for name, hi in pairs(scheme) do
					if type(hi) == "table" then
						for _,k in pairs({"fg", "bg"}) do
							if hi[k] and not hi["cterm" .. k] then
								local cterm = guess_cterm(hi[k])
								if cterm ~= nil then
									scheme[name]["cterm" .. k] = cterm
								end
							end
						end
					end
				end
			end
			-- print(vim.inspect(scheme))
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
