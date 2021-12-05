-- luacheck: globals vim
vim.cmd([[set background=dark]])
vim.g.colors_name = "lushwal"
package.loaded["lush_theme.lushwal"] = nil
require("lush")(require("lush_theme.lushwal"))
