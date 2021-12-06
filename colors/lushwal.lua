-- luacheck: globals vim
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
package.loaded["lushwal"] = nil
-- Load the colorscheme:
vim.cmd([[packadd lush.nvim]])
require("lush")(require("lushwal"))
-- Then compile it:
local config = require("lushwal.config")
if config.compile_to_vimscript then
	require("lushwal.compile")()
end
