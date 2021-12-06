-- luacheck: globals vim
local compile = require("lushwal.compile")

_G.__lushwal_compile = function()
	compile()
end

vim.cmd("command! LushwalCompile lua v.lua:__lushwal_compile()")
