local xdg = require("lushwal.utils.xdg")

local w = vim.loop.new_fs_event()
local watch_file
local function on_change(_, _, _)
	require("lushwal").compile()
	-- Debounce: stop/start.
	w:stop()
	watch_file()
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
