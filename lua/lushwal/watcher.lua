local xdg = require("lushwal.utils.xdg")

local w = vim.loop.new_fs_event()
local watch_file
local function on_change(_, _, _)
	w:stop()
	vim.defer_fn(function()
		local colorscheme_path = xdg("XDG_CONFIG_HOME") .. "/nvim/colors/lushwal.vim"
		local handle
		handle = vim.loop.spawn(
			"perl",
			{
				args = {
					"-MFcntl=:flock",
					"-e",
					-- one-liner from: https://stackoverflow.com/a/13343904
					[[$|=1; $f=shift; open(FH,$f) || die($!); flock(FH,LOCK_EX|LOCK_NB); system(join(" ",@ARGV)); flock(FH,LOCK_UN);]],
					colorscheme_path,
					[[nvim --headless +LushwalCompile +qall 2> /dev/null]],
				},
				stdio = { nil, nil, nil },
			},
			vim.schedule_wrap(function()
				handle:close()
				require("lushwal").reload_theme()
				watch_file()
			end)
		)
		if handle == nil then
			vim.notify("[Lushwal.nvim] Could not execute perl.")
			require("lushwal").compile()
		end
	end, 100)
end
function watch_file()
	local wal_path = xdg("XDG_CACHE_HOME") .. "/wal/colors.json"
	w:start(
		wal_path,
		{},
		vim.schedule_wrap(function(...)
			on_change(...)
		end)
	)
end

return watch_file
