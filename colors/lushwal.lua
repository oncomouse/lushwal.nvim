-- luacheck: globals vim
-- This file only runs if a cached lushwal.vim file does not already exist. If you configure lushwal to compile (which
-- is the default), it will compile a new VimL color file.
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
package.loaded["lushwal"] = nil
-- Load the colorscheme:
vim.cmd([[packadd lush.nvim]])
require("lush")(require("lushwal").scheme)
-- Then compile it:
local config = require("lushwal").config
if config.compile_to_vimscript then
	require("lushwal").compile()
end
