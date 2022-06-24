local lushwal = require("lushwal")

local autogrp = vim.api.nvim_create_augroup("lushwal", {})

vim.api.nvim_create_autocmd("VimEnter", {
	pattern = "*",
	callback = lushwal.compile_if_stale,
	group = autogrp,
})
