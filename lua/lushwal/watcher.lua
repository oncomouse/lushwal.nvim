local xdg = require("lushwal.utils.xdg")

local w = vim.loop.new_fs_event()
local watch_file
local function on_change(_, _, _)
	w:stop()
	vim.defer_fn(function()
		local colorscheme_path = xdg("XDG_CONFIG_HOME") .. "/nvim/colors/lushwal.vim"
		local stdout = vim.loop.new_pipe(false)
		local stderr = vim.loop.new_pipe(false)
		local handle
		local locked = false
		local function onread(err, data)
			if err then
				error(err)
			end
			if data then
				locked = true
			end
		end
		handle = vim.loop.spawn(
			"perl",
			{
				args = {
					"-MFcntl=:flock",
					"-e",
					-- one-liner from: https://stackoverflow.com/a/13343904
					[[$|=1; $f=shift; open(FH,$f) || die($!); flock(FH,LOCK_EX|LOCK_NB) || die($!); system(join(" ",@ARGV)); flock(FH,LOCK_UN);]],
					colorscheme_path,
					[[nvim --headless +LushwalCompile +qall 2> /dev/null]],
				},
				stdio = { nil, stdout, stderr },
			},
			vim.schedule_wrap(function()
				stdout:read_stop()
				stderr:read_stop()
				stdout:close()
				stderr:close()
				handle:close()
				if locked then
					-- If flock has already triggered, we wait until compilation can finish:
					vim.defer_fn(function()
						require("lushwal").reload_theme()
					end, 300)
				else
					-- Otherwise, run it right away:
					require("lushwal").reload_theme()
				end
				watch_file()
			end)
		)
		vim.loop.read_start(
			stdout,
			vim.schedule_wrap(function(...)
				onread(...)
			end)
		)
		vim.loop.read_start(
			stderr,
			vim.schedule_wrap(function(...)
				onread(...)
			end)
		)

		if handle == nil then
			-- If there is no perl interpreter, we just compile and hope for hte best:
			vim.notify("[Lushwal.nvim] Could not execute perl.")
			require("lushwal").compile()
		end
	end, 1)
end
function watch_file()
	w:start(
		require("lushwal").config.wal_path,
		{},
		vim.schedule_wrap(function(...)
			on_change(...)
		end)
	)
end

return watch_file
