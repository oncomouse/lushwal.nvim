-- luacheck: globals vim
-- This file only runs if a cached lushwal.vim file does not already exist. If you configure lushwal to compile (which
-- is the default), it will compile a new VimL color file.
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
vim.cmd([[packadd lush.nvim]])
require("lush")(require("lushwal").scheme)

-- This makes sure we compile the vimscript scheme with an late added configuration variables (such as those set in a
-- packer.nvim config function). We reload the colorscheme for the same reasons.
vim.defer_fn(function()
	local config = require("lushwal").config
	-- Load lightline configuration:
	if require("lushwal").config.addons.lightline then
		vim.g.lightline = {
			colorscheme = "lushwal",
		}
		require("lushwal.addons.lightline")
	end
	-- Compile:
	if config.compile_to_vimscript then
		require("lush")(require("lushwal").scheme)
		require("lushwal").compile()
	end
end, 1)
