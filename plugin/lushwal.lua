-- luacheck: globals vim
local lushwal = require("lushwal")

vim.api.nvim_create_user_command("LushwalCompile", function()
	lushwal.compile()
end, {})

local autogrp = vim.api.nvim_create_augroup("lushwal", {})

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = function()
		lushwal.compile_if_stale()
	end,
	group = autogrp,
})
