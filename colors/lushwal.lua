-- luacheck: globals vim
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
package.loaded["lushwal"] = nil
require("lush")(require("lushwal"))
