local M = {}

local config = require("cformat42.config")
local formatter = require("cformat42.formatter")

M.setup = function (opts)
	config.setup(opts)
	formatter.setup_commands()
end

return M
