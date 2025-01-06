-- luacheck: globals vim
local xdg = require("lushwal.utils.xdg")
local default_configuration = require("lushwal.config")

local function merge_configuration()
	return vim.tbl_deep_extend("force", default_configuration, vim.g.lushwal_configuration or {})
end

local M = {}
local config = {}
local colors = {}
M.compile = function()
	M.reload_colors()
	require("lushwal.compile")()
end
M.compile_if_stale = function()
	local uv = vim.loop
	local mtime = function(s)
		return s.mtime.sec
	end
	local our_path = xdg("XDG_CONFIG_HOME") .. "/nvim/colors/lushwal.vim"
	-- fs_stat will return nil for missing files, you could also check
	-- specifically for stat, errmsg, code  where code == "ENOENT" for missing
	-- files, vs unreadable but it probably doesn't matter most of the time.
	local wal_stats = uv.fs_stat(config.wal_path)
	local our_stats = uv.fs_stat(our_path)
	if (wal_stats and not our_stats) or (wal_stats and our_stats and mtime(our_stats) < mtime(wal_stats)) then
		-- have wal-file but no compiled output or have both but ours is older
		return M.compile()
	else
		return nil
	end
end

local hooks = {}
M.add_reload_hook = function(callback)
	table.insert(hooks, callback)
end
local function run_hooks()
	for _, hook in pairs(hooks) do
		if type(hook) == "string" then
			vim.cmd(hook)
		elseif type(hook) == "function" then
			hook()
		end
	end
end
M.reload_colors = function()
	local cfg = M.config
	pcall(vim.cmd, "packadd lush.nvim")
	colors = require("lushwal.colors")()
	if type(cfg.color_overrides) == "function" then
		local ok, c = pcall(cfg.color_overrides, colors)
		if ok then
			colors = c
		end
	elseif type(cfg.color_overrides) == "table" then
		colors = vim.tbl_extend("force", colors, cfg.color_overrides)
	end
end
M.reload_theme = function()
	M.reload_colors()
	vim.cmd([[colorscheme lushwal]])
	run_hooks()
end

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
			pcall(vim.cmd, "packadd lush.nvim")
			local lush = require("lush")

			local cfg = lushwal.config

			-- Set terminal colors if set to true in config
			if cfg.terminal_colors == true then
				local convert = require("lush.vivid.hsl.convert")
				-- Set terminal colors
				vim.g.terminal_color_0 = convert.hsl_to_hex(colors.color0)
				vim.g.terminal_color_1 = convert.hsl_to_hex(colors.color1)
				vim.g.terminal_color_2 = convert.hsl_to_hex(colors.color2)
				vim.g.terminal_color_3 = convert.hsl_to_hex(colors.color3)
				vim.g.terminal_color_4 = convert.hsl_to_hex(colors.color4)
				vim.g.terminal_color_5 = convert.hsl_to_hex(colors.color5)
				vim.g.terminal_color_6 = convert.hsl_to_hex(colors.color6)
				vim.g.terminal_color_7 = convert.hsl_to_hex(colors.color7)
				vim.g.terminal_color_8 = convert.hsl_to_hex(colors.color8)
				vim.g.terminal_color_9 = convert.hsl_to_hex(colors.color9)
				vim.g.terminal_color_10 = convert.hsl_to_hex(colors.color10)
				vim.g.terminal_color_11 = convert.hsl_to_hex(colors.color11)
				vim.g.terminal_color_12 = convert.hsl_to_hex(colors.color12)
				vim.g.terminal_color_13 = convert.hsl_to_hex(colors.color13)
				vim.g.terminal_color_14 = convert.hsl_to_hex(colors.color14)
				vim.g.terminal_color_15 = convert.hsl_to_hex(colors.color15)
			end

			package.loaded["lushwal.base"] = nil
			local scheme = require("lushwal.base")

			-- Merge desired addons:
			for _, addon in pairs(vim.tbl_filter(function(x)
				return cfg.addons[x] == true
			end, vim.tbl_keys(cfg.addons))) do
				if not vim.tbl_contains(addons_to_skip, addon) then
					xpcall(function()
						package.loaded["lushwal.addon" .. addon] = nil
						scheme = lush.merge({ scheme, require("lushwal.addons." .. addon) })
					end, function(err)
						error("There was an error loading lushwal.addons." .. addon .. "\n\n Error: " .. err)
					end)
				end
			end
			return scheme
		elseif key == "colors" then
			if #vim.tbl_keys(colors) then
				lushwal.reload_colors()
			end
			return colors
		else
			return lushwal[key]
		end
	end,
})

return M
